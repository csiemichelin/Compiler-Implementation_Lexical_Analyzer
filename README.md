# Implementation-of-a-Lexical-Analyzer
## 目錄
 - [環境設置與使用方法](#環境設置與使用方法)
 - [介紹](#介紹)
 - [Demo](#Demo)
## 環境設置與使用方法
## 介紹
1.This category of tokens includes all identifiers. An identifier is a sequence of underscores, letters, and digits; the first character must be an underscore or a letter. All identifiers are returned as the same token type. However, there are a large number of possible lexemes for this token type. To distinguish these lexemes, the string of each identifier is returned as the attribute value of the token.

2.This category of tokens includes the following 18 keywords:   
        **And, Begin, Do, Else, End, EndIf, EndWhile, Exit, If, Not, Or, Program, Read, Set, Then, Var, While, Write. **
        
3.These  keywords  are  reserved  for  special  use,  and  may  not  be  used  as identifiers. Each keyword is returned as a different token type. Namely, there are 18 different token types. Since there is only one lexeme for each token, no attribute value is returned for each keyword. This  category  of  tokens
includes  all  integer  constants.  An  integer  constant consists of a sequence of digits. All integer constants are returned as the same token  type.  However,  there  are  a  large  number  of  possible  lexemes  for  this token  type.  To  distinguish  these  lexemes,  the  integer  value  of  each  integer constant is returned as the attribute value of the token.

4.This category of tokens includes the following 14 operators: 
        **+    -    *    /    %    =    ==    <>    >    >=    <    <=    (    )**
Each  operator  is  returned  as  a  different  token  type.  Namely,  there  are  14 different  token  types.  Since  there  is  only  one  lexeme  for  each  token,  no attribute value is returned for each operator.

5.This  category  of  tokens  includes  all  white  spaces.  A  white  space  may  be  a  (‘ ’), a tab (‘\t’), or a newline (‘\n’). These white spaces are mainly served to separate tokens. These tokens are ignored and are not returned.

6.This  category  of  tokens  includes  all  comments.  A  comment  starts  with  the characters // and ends with a newline. These tokens are ignored and are not returned. When a character is not recognized as one of the above 6 types of tokens, this character is ignored and the lexical analyzer needs to print the following error message **“Lexical error: line %d: unknown character %c” **

## Demo

