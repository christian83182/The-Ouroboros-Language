{ 
module Grammar where 
import Tokens 
}

%name parseTokens 
%tokentype { Token } 
%error { parseError }

%token 
    intVar     { TokenInt $$ } 
    boolVar    { TokenBoolean $$ }
    varName    { TokenVarName $$ }
    fileName   { TokenFileName $$ }
    'print'    { TokenPrint }
    'var'      { TokenVarDec }
    '='        { TokenVarEq }
    'import'   { TokenImport }
    'as'       { TokenAs }
    'loop'     { TokenLoop }
    '+'        { TokenPlus } 
    '-'        { TokenMinus } 
    '*'        { TokenMulti }
    '&'        { TokenConc }
    '@'        { TokenIndex }
    '#'        { TokenLength }  
    'AND'      { TokenAND }
    'OR'       { TokenOR }
    'NOT'      { TokenNOT }
    '=='       { TokenEq }
    '('        { TokenLParen }
    ')'        { TokenRParen }
    '['        { TokenLBracket }
    ']'        { TokenRBracket }
    '{'        { TokenLBrace }
    '}'        { TokenRBrace }
    ';'        { TokenSemiColon }
    ','        { TokenComa }
    




%left '==' '{' '@'
%left '+' '-' 'AND' 'OR' '&'
%left '*' 'NOT'
%left '#'

%% 
StatementList :
      Statement StatementList                           { MultiStatement $1 $2 }
    | Statement                                         { SingleStatement $1 }

Statement :
      Loop                                              { LoopStat $1 }
    | Import ';'                                        { ImportStat $1 }
    | NumExpr ';'                                       { NumStat $1 }
    | BoolExpr ';'                                      { BoolStat $1 }
    | StreamExpr ';'                                    { StreamStat $1 }
    | StreamBlockWrapper ';'                            { BlockStat $1 }
    | Print ';'                                         { PrintStat $1 }
    | VarDec ';'                                        { VarDecStat $1 }
    
Print :
      'print' StreamBlockWrapper                        { PrintBlock $2 }

VarDec :
      'var' varName '=' StreamBlockWrapper              { VarDec $2 $4 }
    
StreamExpr :
      StreamExpr '&' StreamExpr                         { ConcExpr $1 $3 }
    | StreamWrapper                                     { StreamVal $1 }
    
StreamBlockWrapper :
      '{' StreamBlock '}'                               { BasicBlockWrapper $2 }
    | varName                                           { VarBlock $1 }
    
StreamBlock :
      StreamExpr ',' StreamBlock                        { BasicBlock $1 $3 }
    | StreamExpr                                        { SingletonBlock $1 }
    
StreamWrapper :
      '[' Stream ']'                                    { BasicStreamWrapper $2 }
    | StreamBlockWrapper '@' NumExpr                    { StreamBlockIndex $1 $3 }
    
Stream :
      NumExpr ',' Stream                                { BasicStream $1 $3 }
    | NumExpr                                           { SingletonStream $1 }
    
Loop :
      'loop' '(' BoolExpr ')' '(' StatementList ')'     { BoolLoop $3 $6 }
      
Import :
      'import' fileName 'as' varName                    { FileImport $2 $4 }

NumExpr : 
      NumExpr '+' NumExpr                               { Plus $1 $3 } 
    | NumExpr '-' NumExpr                               { Minus $1 $3 } 
    | NumExpr '*' NumExpr                               { Multi $1 $3 }
    | intVar                                            { NumVal $1 } 
    | StreamExpr '@' NumExpr                            { StreamIndex $1 $3 }
    | '#' StreamExpr                                    { StreamLength $2 }
    | '#' StreamBlockWrapper                            { StreamBlockLength $2 }
    
BoolExpr :
      BoolExpr 'AND' BoolExpr                           { And $1 $3 }
    | BoolExpr 'OR' BoolExpr                            { Or $1 $3 }
    | BoolExpr '==' BoolExpr                            { BoolEq $1 $3 }
    | NumExpr '==' NumExpr                              { NumEq $1 $3 }
    | 'NOT' BoolExpr                                    { Not $2 }
    | boolVar                                           { BoolVal $1 }
    
    
    
    
    
{ 
parseError :: [Token] -> a
parseError _ = error "Parse error" 

data StatementList = MultiStatement Statement StatementList
                   | SingleStatement Statement
                   deriving Show

data Statement = LoopStat Loop
               | ImportStat Import
               | NumStat NumExpr
               | BoolStat BoolExpr
               | StreamStat StreamExpr
               | BlockStat BlockWrapper
               | PrintStat Print
               | VarDecStat VarDec 
               deriving Show 

data Print = PrintBlock BlockWrapper
           deriving Show
           
data VarDec = VarDec String BlockWrapper
            deriving Show
               
data Import = FileImport String String
            deriving Show

data Loop = BoolLoop BoolExpr StatementList
          deriving Show
          
data StreamExpr = ConcExpr StreamExpr StreamExpr
                | StreamVal StreamWrapper
                deriving Show
          
data StreamWrapper = BasicStreamWrapper Stream
                   | StreamBlockIndex BlockWrapper NumExpr
                   deriving Show

data Stream = BasicStream NumExpr Stream
            | SingletonStream NumExpr
            deriving Show
            
data BlockWrapper = BasicBlockWrapper Block
                  | VarBlock String
                  deriving Show

data Block = BasicBlock StreamExpr Block
           | SingletonBlock StreamExpr
           deriving Show

data NumExpr = Plus NumExpr NumExpr 
             | Minus NumExpr NumExpr 
             | Multi NumExpr NumExpr
             | NumVal Int 
             | StreamIndex StreamExpr NumExpr
             | StreamLength StreamExpr
             | StreamBlockLength BlockWrapper
             deriving Show 

data BoolExpr = And BoolExpr BoolExpr
              | Or BoolExpr BoolExpr
              | BoolEq BoolExpr BoolExpr
              | NumEq NumExpr NumExpr
              | Not BoolExpr
              | BoolVal Bool
              deriving Show 
} 


































