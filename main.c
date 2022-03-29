#define _filbuf _flushfilbuf
#include <stdlib.h>
#include <stdio.h>

extern FILE  *yyin, *yyout;
extern char *yytext, *yyprevious, *yysptr, *yysbuf ;
extern int yylex();

//判斷不同型態得return值
void Det_Num(int number)
{
  if(number == 256) printf("Identifier: %s\n", yytext);
  else if(number == 257)  printf("Integer Constant: %d\n", atoi(yytext));
  else if(number == 258)  printf("Operator: %s\n", yytext);
  else if(number == 259) printf("Keyword: %s\n", yytext);
  else  fprintf(stderr,"Lexical error: line %d: unknown character %s\n",number,yytext);
}

int main(int argc, char** argv) 
{ 
  int token = 0;//記得初始化不然換行鍵會視作奇怪的數值
  if (argc > 1) 
  { 
    if (!(yyin = fopen(argv[2],"r"))) 
    { 
      perror(argv[1]); 
      return 1; 
    } 
  } 
  while (token = yylex()) 
  {
    Det_Num(token);
  }
  
  return 0; 
} 
