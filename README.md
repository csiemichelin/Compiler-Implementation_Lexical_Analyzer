# Implementation-of-a-Lexical-Analyzer
## 目錄
 - [環境設置與使用方法](#環境設置與使用方法)
 - [介紹](#介紹)
 - [Demo](#Demo)
## 環境設置與使用方法
**1. 環境設置**  
&emsp;Ubuntu平臺下面Lex和Yacc開發環境所需要安裝的程序：    
&emsp;&emsp;* **Lex(flex.exe)和Yacc(bison.exe)環境**        
&emsp;&emsp;&emsp;```sudo apt-get install flex bison```    
&emsp;&emsp;* **C/C++編譯器**      
&emsp;&emsp;&emsp;```sudo apt-get update```      
&emsp;&emsp;&emsp;```sudo apt-get upgrade```      
&emsp;&emsp;&emsp;```sudo apt-get install build-essential```        
&emsp;&emsp;&emsp;```sudo apt-get install libc6-dev```  
**2. 使用方法**  
&emsp;&emsp;<img src="![flex](https://user-images.githubusercontent.com/49907717/160639818-c2fde504-c305-467c-a3b0-fe2fa67b6315.PNG))" width="500" height="250">    
&emsp;&emsp;根據以上圖示去執行但這裡穩麼使用makefile簡化步驟，只要在terminal上輸入```make```即可。  

## 介紹
**1.** This category of tokens includes all identifiers. An identifier is a sequence of underscores, letters, and digits; the first character must be an underscore or a letter. All identifiers are returned as the same token type. However, there are a large number of possible lexemes for this token type. To distinguish these lexemes, the string of each identifier is returned as the attribute value of the token.

**2.** This category of tokens includes the following 18 keywords:     
**And, Begin, Do, Else, End, EndIf, EndWhile, Exit, If, Not, Or, Program, Read, Set, Then, Var, While, Write.**  
        
**3.** These  keywords  are  reserved  for  special  use,  and  may  not  be  used  as identifiers. Each keyword is returned as a different token type. Namely, there are 18 different token types. Since there is only one lexeme for each token, no attribute value is returned for each keyword. This  category  of  tokens
includes  all  integer  constants.  An  integer  constant consists of a sequence of digits. All integer constants are returned as the same token  type.  However,  there  are  a  large  number  of  possible  lexemes  for  this token  type.  To  distinguish  these  lexemes,  the  integer  value  of  each  integer constant is returned as the attribute value of the token.

**4.** This category of tokens includes the following 14 operators:  
**+ - * / % = == <> > >= < <= ( )**  
Each  operator  is  returned  as  a  different  token  type.  Namely,  there  are  14 different  token  types.  Since  there  is  only  one  lexeme  for  each  token,  no attribute value is returned for each operator.

**5.** This  category  of  tokens  includes  all  white  spaces.  A  white  space  may  be  a  (‘ ’), a tab (‘\t’), or a newline (‘\n’). These white spaces are mainly served to separate tokens. These tokens are ignored and are not returned.

**6.** This  category  of  tokens  includes  all  comments.  A  comment  starts  with  the characters // and ends with a newline. These tokens are ignored and are not returned. When a character is not recognized as one of the above 6 types of tokens, this character is ignored and the lexical analyzer needs to print the following error message **“Lexical error: line %d: unknown character %c”**

## Demo
**1.**  
**Input : test1.txt**
``` 
// A program to sum 1 to n 
Program sum Begin 
    Var    n 
    Var    s 
 
    Read n 
    If n < 0 Then 
        Write -1 
        Exit 
    Else 
        Set s = 0 
    EndIf 
    While n > 0 Do 
        Set s = s + n 
        Set n = n – 1 
    EndWhile 
    Write s 
End
```
**Output**
The stdout output of test1 using –s option is as follows:  
 
Keyword: Program   
Identifier: sum   
Keyword: Begin   
Keyword: Var   
Identifier: n   
Keyword: Var   
Identifier: s   
Keyword: Read   
Identifier: n   
Keyword: If   
Identifier: n   
Operator: <   
Integer Constant: 0   
Keyword: Then   
Keyword: Write   
Operator: -  
Integer Constant: 1   
Keyword: Exit   
Keyword: Else   
Keyword: Set   
Identifier: s   
Operator: =   
Integer Constant: 0   
Keyword: EndIf  
Keyword: While   
Identifier: n   
Operator: >   
Integer Constant: 0   
Keyword: Do  
Keyword: Set   
Identifier: s   
Operator: =   
Identifier: s   
Operator: +   
Identifier: n   
Keyword: Set   
Identifier: n   
Operator: =   
Identifier: n   
Operator: -   
Integer Constant: 1   
Keyword: EndWhile   
Keyword: write   
Identifier: s   
Keyword: End  

**2.**  
**Input : test2.txt**  
```
// A program to sum 1 to n   
Program sum Begin   
    Var    n   
    Var    s   
    
    Read n   
    If n < 0 Then   
        Write -1   
        Exit   
    Else   
        Set s = 0   
    EndIf   
    While n > 0 Do   
        Set s = s + n   
        Set n = n – 1   
    EndWhile   
    Write s   
End;  
```  
**Output**  
The stdout output of test2 using –s option is as follows:   
 
Keyword: Program   
Identifier: sum   
Keyword: Begin   
Keyword: Var   
Identifier: n   
Keyword: Var   
Identifier: s   
Keyword: Read   
Identifier: n   
Keyword: If   
Identifier: n   
Operator: <   
Integer Constant: 0   
Keyword: Then   
Keyword: Write   
Operator: -    
Integer Constant: 1   
Keyword: Exit   
Keyword: Else   
Keyword: Set   
Identifier: s   
Operator: =   
Integer Constant: 0   
Keyword: EndIf  
Keyword: While  
Identifier: n  
Operator: >  
Integer Constant: 0  
Keyword: Do  
Keyword: Set  
Identifier: s  
Operator: =  
Identifier: s  
Operator: +  
Identifier: n  
Keyword: Set  
Identifier: n  
Operator: =  
Identifier: n  
Operator: -  
Integer Constant: 1  
Keyword: EndWhile  
Keyword: write  
Identifier: s  
Keyword: End  
 
The stderr output of test2 is as follows:  
Lexical error: line 18: unknown character ;  
