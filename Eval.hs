import Tokens
import Grammar

parseLang :: String -> StatementList
parseLang s = parseTokens (alexScanTokens s)

-- Function to evaluate a StreamBlockWrapper
-- Missing VarBlock
evalBlockWrapper :: BlockWrapper -> [[Int]]
evalBlockWrapper (BasicBlockWrapper block) = evalBlock block

-- Function to evaluate a StreamBlock
-- Finished
evalBlock :: Block -> [[Int]]
evalBlock (BasicBlock expr block) = [(evalStreamExpr expr)] ++ (evalBlock block)
evalBlock (SingletonBlock expr) = [(evalStreamExpr expr)]

-- Function to evaluate a SteamExpr 
-- Finished 
evalStreamExpr :: StreamExpr -> [Int]
evalStreamExpr (ConcExpr expr1 expr2) = (evalStreamExpr expr1) ++ (evalStreamExpr expr2)
evalStreamExpr (StreamVal wrapper) = evalStreamWrapper wrapper

-- Function to evaluate a Stream Wrapper
-- Missing StreamBlockIndex
evalStreamWrapper:: StreamWrapper -> [Int]
evalStreamWrapper (BasicStreamWrapper stream) = evalStream stream
evalStreamWrapper (StreamBlockIndex block index) = (evalBlockWrapper block) !! (evalNumExpr index)

-- Function to evaluate a Stream to an updated Stream
-- Finished
evalStream :: Stream -> [Int]
evalStream (BasicStream num stream) = (evalNumExpr num) : (evalStream stream)
evalStream (SingletonStream num) = [evalNumExpr num]
evalStream (EmptyStream) = []

-- Function to evaluate a NumExpr to an Int
-- Missing StreamIndex
evalNumExpr :: NumExpr -> Int
evalNumExpr (Plus num1 num2)            = (evalNumExpr num1) + (evalNumExpr num2)
evalNumExpr (Minus num1 num2)           = (evalNumExpr num1) - (evalNumExpr num2)
evalNumExpr (Multi num1 num2)           = (evalNumExpr num1) * (evalNumExpr num2)
evalNumExpr (NumVal value)              = value
evalNumExpr (StreamIndex expr index)    = (evalStreamExpr expr) !! (evalNumExpr index)
evalNumExpr (StreamLength expr)         = length (evalStreamExpr expr)
evalNumExpr (StreamBlockLength block)   = length (evalBlockWrapper block)


-- Function to evaluate a BoolExpr to a Bool.
-- Finished
evalBoolExpr :: BoolExpr -> Bool
evalBoolExpr (And bool1 bool2)        = (evalBoolExpr bool1) && (evalBoolExpr bool2)
evalBoolExpr (Or bool1 bool2)         = (evalBoolExpr bool1) || (evalBoolExpr bool2)
evalBoolExpr (Not bool)               = not (evalBoolExpr bool) 
evalBoolExpr (LessThan num1 num2)     = (evalNumExpr num1) < (evalNumExpr num2)
evalBoolExpr (GreaterThan num1 num2)  = (evalNumExpr num1) > (evalNumExpr num2)
evalBoolExpr (BoolEq bool1 bool2)     = (evalBoolExpr bool1) == (evalBoolExpr bool2)
evalBoolExpr (NumEq num1 num2)        = (evalNumExpr num1) == (evalNumExpr num2)
evalBoolExpr (BoolVal value)          = value




































