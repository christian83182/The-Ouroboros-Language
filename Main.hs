import Tokens
import Grammar
import Eval

import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch executeProg noParse

executeProg = do
            (fileName : _ ) <- getArgs
            sourceText      <- readFile fileName
            content         <- getContents
            putStrLn ("Source Text: " ++ sourceText ++ "\n")
            let tokens = alexScanTokens sourceText
            putStrLn ("Tokens: " ++ (show tokens) ++ "\n")
            let parsedLang = parseTokens (tokens)
            putStrLn ("Parsed as: " ++ (show parsedLang) ++ "\n")
            let result = evalProgram (parsedLang) (content)
            putStrLn ("Evaluates to: " ++ (show result) ++ "\n")

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
