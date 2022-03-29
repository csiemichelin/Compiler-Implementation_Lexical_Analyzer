%{
/*definition*/
#include <stdlib.h>
int lines = 1;
#define ID 256
#define NUMBER 257
#define OPERATORS 258
#define KEYWORDS 259
%}

/*token:a set of strings*/
%option noyywrap
delim   [\t ]
ws  {delim}+
letter  [A-Za-z]
digit   [0-9]
underscores "_"
id  ({letter}|{underscores})({letter}|{digit}|{underscores})*
keywords "And"|"Begin"|"Do"|"Else"|"End"|"EndIf"|"EndWhile"|"Exit"|"If"|"Not"|"Or"|"Program"|"Read"|"Set"|"Then"|"Var"|"While"|"Write"
/*\- can be segmntation with space && - && number*/
operators   "\+"|"*"|"/"|"%"|"=="|"="|"<>"|">"|">="|"<"|"<="|"("|")"|"\-" 
number  {digit}+

/*pattern:a rule defining a token*/
%% 
"//".*  {/* DO NOTHING */ }    //comment:.* is Any character except the space 
{ws}    {/*no action and no return*/}
[\n]  {lines++;}
{keywords} {return KEYWORDS;}
{id}    {return ID;}
{number}    {return NUMBER;}
{operators}  {return OPERATORS;}
.   {return lines;}

%%

