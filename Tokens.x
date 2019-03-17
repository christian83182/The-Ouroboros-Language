{ 
module Tokens where 
}

%wrapper "basic" 

-- numerical digits
$digit = 0-9     

-- alphabetic characters
$alpha = [a-zA-Z]    

-- uppercase alphabetic characters
$upperAlpha = [A-Z]    

tokens :-
  "||".*        ; 
  $white+       ; 
  "True"            { \s -> TokenBoolean True}
  "False"           { \s -> TokenBoolean False}
  "print"           { \s -> TokenPrint}
  "var"             { \s -> TokenVarDec}
  "="               { \s -> TokenVarEq}
  "import"          { \s -> TokenImport}
  "as"              { \s -> TokenAs}
  "loop"            { \s -> TokenLoop}
  "+"               { \s -> TokenPlus}
  "-"               { \s -> TokenMinus}
  "*"               { \s -> TokenMulti}
  "&"               { \s -> TokenConc}
  "@"               { \s -> TokenIndex}
  "#"               { \s -> TokenLength}
  "AND"             { \s -> TokenAND}
  "OR"              { \s -> TokenOR}
  "NOT"             { \s -> TokenNOT}
  "=="              { \s -> TokenEq}
  "("               { \s -> TokenLParen}
  ")"               { \s -> TokenRParen}
  "["               { \s -> TokenLBracket}
  "]"               { \s -> TokenRBracket}
  "{"               { \s -> TokenLBrace}
  "}"               { \s -> TokenRBrace}
  ";"               { \s -> TokenSemiColon}
  ","               { \s -> TokenComa}
  "-"? $digit+      { \s -> TokenInt (read s) } 
  $upperAlpha [$upperAlpha]*       { \s -> TokenVarName s }
  $alpha [$alpha $digit \_ \.]*    { \s -> TokenFileName s}
{ 

data Token =  
  TokenInt Int           |
  TokenVarName String    |
  TokenFileName String   |
  TokenBoolean Bool      |
  TokenPrint             |
  TokenVarDec            |
  TokenVarEq             |
  TokenImport            |
  TokenAs                |
  TokenLoop              |
  TokenStart             |
  TokenEnd               |
  TokenPlus              |
  TokenMinus             |
  TokenMulti             |
  TokenConc              |
  TokenIndex             |
  TokenLength            |
  TokenAND               |
  TokenOR                |
  TokenNOT               |
  TokenEq                |
  TokenLParen            |
  TokenRParen            |
  TokenLBracket          |
  TokenRBracket          |
  TokenLBrace            |
  TokenRBrace            |
  TokenSemiColon         |
  TokenComa
  deriving (Eq,Show) 
}