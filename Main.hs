import Tokens
import Grammar
import Eval

import Data.List
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch executeProg noParse

executeProg = do
            (fileName : _ ) <- getArgs
            sourceText      <- readFile fileName
            stdInContents   <- getContents
            let tokens = alexScanTokens sourceText
            let parsedLang = parseTokens (tokens)
            let result = evalProgram (parsedLang) (stdInContents)
            --putStrLn (show result)
            let output = lookup "output" result 
            putStr (makeOutputString output)
            
makeOutputString :: Maybe [[Int]] -> String
makeOutputString Nothing = ""
makeOutputString (Just block) = parseOutputBlock transposedBlock
    where transposedBlock = Data.List.transpose stringBlock
          stringBlock = map (map show) block :: [[String]]
        
parseOutputBlock :: [[String]] -> String
parseOutputBlock (x:xs) = (intercalate " " x) ++ ['\n'] ++ (parseOutputBlock xs)
parseOutputBlock [] = "" 

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
