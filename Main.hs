import Tokens
import Grammar

parseLang :: String -> StatementList
parseLang s = parseTokens (alexScanTokens s)