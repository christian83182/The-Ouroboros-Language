module Eval where
import Grammar
import Data.List
import Debug.Trace
import Data.Map (Map)
import qualified Data.Map as Map

-- Type synonym for an association list used to store variables and their values.
type VarStore = [ (String , [[Int]]) ]

-- Function to evaluate the progeam as a whole. 
-- Takes a list of statements and a string containing whatever was passed into STDIN and returns the
-- final VarStore
evalProgram :: StatementList -> String -> VarStore
evalProgram statList input = evalStatList statList [("global",parseStreamBlock input)]

-- Parses some String representing a Stream Block into a [[Int]] of the same value. 
parseStreamBlock :: String -> [[Int]]
parseStreamBlock s = init (intStreams !! 0) : (tail intStreams)
    where intStreams = map (map read) streams :: [[Int]]
          streams = Data.List.transpose (splitOnWhitespace (split s '\n'))

-- Recursively splits the strings within a list on ' ' such that a list of lists is formed. 
splitOnWhitespace :: [String] -> [[String]]
splitOnWhitespace (x:xs) = (split x ' ') : (splitOnWhitespace xs)
splitOnWhitespace [] = []

-- Splits some sting on some character into a list. 
split :: String -> Char -> [String]
split [] char = [""]
split (x:xs) char
    | x == char = "" : rest
    | otherwise = (x : head rest) : tail rest
    where
        rest = split xs char
    
-- Function to evaluate a statement list
-- Finished
evalStatList :: StatementList -> VarStore -> VarStore
evalStatList (SingleStatement stat) store             = evalStat stat store
evalStatList (MultiStatement stat statList) store     = evalStatList statList updatedStore
    where updatedStore = evalStat stat store
                                                            
-- Function to evaluate a statement
-- Missing implementations for everything except varDecStat. 
-- Do we want to allow a statement which does nothing? Eg: a BoolStat?
evalStat :: Statement -> VarStore  -> VarStore
evalStat (LoopStat loop) store              = evalLoop loop store
evalStat (ImportStat importStat) store      = evalImport importStat store
evalStat (VarDecStat varDec) store          = evalVarDec varDec store
evalStat (PrintStat printStat) store        = store
evalStat (NumStat num) store                = store
evalStat (BoolStat bool) store              = store
evalStat (StreamStat expr) store            = store
evalStat (BlockStat blockWrapper) store     = store

-- Function to evaluate a import statement. It essentially assigned the value of th'global' variable to some name.
-- Finished
evalImport :: Import -> VarStore -> VarStore
evalImport (FileImport varName) store = Map.toAscList newMap
    where newMap      = Map.insert varName globalValue oldMap
          oldMap      = Map.fromAscList store
          globalValue = case lookup "global" store of
                            Nothing -> error ("No data to import")
                            Just value -> value

-- Function to evaluate a loop statement. The boolean condition is checked, and if it is true then 
-- the function is called recursively with a new version of VarStore which is the result of evaluating
-- the statement list within the loop. 
-- Finished
evalLoop:: Loop -> VarStore -> VarStore
evalLoop (BoolLoop bool statList) store  = if shouldLoop == True then newStore else store
    where shouldLoop = evalBoolExpr bool store
          newStore = evalLoop (BoolLoop bool statList) (evalStatList statList store)
          

-- Function to evaluate a variable declaration. Returns an updated version of VarStore. 
-- The AscList is converted to map before the variable is added to ensure it overweites any previous version. 
-- Finished
evalVarDec :: VarDec -> VarStore -> VarStore
evalVarDec (VarDec varName block) store = Map.toAscList newMap
    where newMap   = Map.insert varName (evalBlockWrapper block store) oldMap
          oldMap   = Map.fromAscList store

-- Function to evaluate a StreamBlockWrapper
-- Finished
evalBlockWrapper :: BlockWrapper -> VarStore -> [[Int]]
evalBlockWrapper (BasicBlockWrapper block) store   = evalBlock block store
evalBlockWrapper (VarBlock varName) store          = case lookup varName store of
                                                        Nothing -> error ("Unbound variable " ++ varName)
                                                        Just value  -> value

-- Function to evaluate a StreamBlock
-- Finished
evalBlock :: Block -> VarStore ->[[Int]]
evalBlock (BasicBlock expr block) store  = [(evalStreamExpr expr store)] ++ (evalBlock block store)
evalBlock (SingletonBlock expr) store    = [(evalStreamExpr expr store)]

-- Function to evaluate a SteamExpr 
-- Finished 
evalStreamExpr :: StreamExpr -> VarStore -> [Int]
evalStreamExpr (ConcExpr expr1 expr2) store     = (evalStreamExpr expr1 store) ++ (evalStreamExpr expr2 store)
evalStreamExpr (StreamVal wrapper) store        = evalStreamWrapper wrapper store

-- Function to evaluate a Stream Wrapper
-- Finished
evalStreamWrapper:: StreamWrapper -> VarStore -> [Int]
evalStreamWrapper (BasicStreamWrapper stream) store     = evalStream stream store
evalStreamWrapper (StreamBlockIndex block index) store  = (evalBlockWrapper block store) !! (evalNumExpr index store)

-- Function to evaluate a Stream to an updated Stream
-- Finished
evalStream :: Stream -> VarStore -> [Int]
evalStream (BasicStream num stream) store    = (evalNumExpr num store) : (evalStream stream store)
evalStream (SingletonStream num) store       = [evalNumExpr num store]
evalStream (EmptyStream) store               = []

-- Function to evaluate a NumExpr to an Int
-- Finished
evalNumExpr :: NumExpr -> VarStore -> Int
evalNumExpr (Plus num1 num2) store            = (evalNumExpr num1 store) + (evalNumExpr num2 store)
evalNumExpr (Minus num1 num2) store           = (evalNumExpr num1 store) - (evalNumExpr num2 store)
evalNumExpr (Multi num1 num2) store           = (evalNumExpr num1 store) * (evalNumExpr num2 store)
evalNumExpr (NumVal value) store              = value
evalNumExpr (StreamIndex expr index) store    = (evalStreamExpr expr store) !! (evalNumExpr index store)
evalNumExpr (StreamLength expr) store         = length (evalStreamExpr expr store)
evalNumExpr (StreamBlockLength block) store   = length (evalBlockWrapper block store)


-- Function to evaluate a BoolExpr to a Bool.
-- Finished
evalBoolExpr :: BoolExpr -> VarStore ->  Bool
evalBoolExpr (And bool1 bool2) store        = (evalBoolExpr bool1 store) && (evalBoolExpr bool2 store)
evalBoolExpr (Or bool1 bool2) store         = (evalBoolExpr bool1 store) || (evalBoolExpr bool2 store)
evalBoolExpr (Not bool) store               = not (evalBoolExpr bool store) 
evalBoolExpr (LessThan num1 num2) store     = (evalNumExpr num1 store) < (evalNumExpr num2 store)
evalBoolExpr (GreaterThan num1 num2) store  = (evalNumExpr num1 store) > (evalNumExpr num2 store)
evalBoolExpr (BoolEq bool1 bool2) store     = (evalBoolExpr bool1 store) == (evalBoolExpr bool2 store)
evalBoolExpr (NumEq num1 num2) store        = (evalNumExpr num1 store) == (evalNumExpr num2 store)
evalBoolExpr (BoolVal value) store          = value
