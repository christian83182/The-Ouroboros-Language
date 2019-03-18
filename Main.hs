import Tokens
import Grammar

parseLang :: String -> StatementList
parseLang s = parseTokens (alexScanTokens s)

-- Function to evaluate a NumExpr to an Int
-- Still missing StreamIndex, StreamLength, and StreamBlockLength
evalNumExpr :: NumExpr -> Int
evalNumExpr (Plus num1 num2)    = (evalNumExpr num1) + (evalNumExpr num2)
evalNumExpr (Minus num1 num2)   = (evalNumExpr num1) - (evalNumExpr num2)
evalNumExpr (Multi num1 num2)   = (evalNumExpr num1) * (evalNumExpr num2)
evalNumExpr (NumVal value)      = value

-- Function to evaluate a BoolExpr to a Bool.
-- Finished
evalBoolExpr :: BoolExpr -> Bool
evalBoolExpr (And bool1 bool2)      = (evalBoolExpr bool1) && (evalBoolExpr bool2)
evalBoolExpr (Or bool1 bool2)       = (evalBoolExpr bool1) || (evalBoolExpr bool2)
evalBoolExpr (Not bool )            = not (evalBoolExpr bool) 
evalBoolExpr (BoolEq bool1 bool2)   = (evalBoolExpr bool1) == (evalBoolExpr bool2)
evalBoolExpr (NumEq num1 num2)      = (evalNumExpr num1) == (evalNumExpr num2)
evalBoolExpr (BoolVal value)        = value