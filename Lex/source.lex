%{
	#include <stdlib.h>
	#include "../Yacc/y.tab.h"
	int nmbNonMatch = 0;
%}
WORD [a-zA-Z][a-zA-Z0-9_]+
NUMBER [0-9]+
SPACE [ \t]+
%x COMMENT
%%
"/*" {BEGIN COMMENT;}
<COMMENT>\n {printf("commentaire debut\n");}
<COMMENT>[a-zA-Z] {}
<COMMENT>"*/" {BEGIN INITIAL; printf("commentaire fin\n");} 

main {printf("tMAIN");}
printf {printf("tPRINTF");}
int {printf("tINT");}
const {printf("tCONST");}
"!" {printf("tNOT");}
"\"" {printf("tQUOTE");}
"," {printf("tCOMMA");}
"*" {printf("tMULTIPLY");}
"/" {printf("tDIVIDE");}
"+" {printf("tADD");}
"=" {printf("tEQUAL");}
"-" {printf("tLESS");}
";" {printf("tEOL");}
"(" {printf("tPARBEGIN");}
")" {printf("tPAREND");}
"{" {printf("tACCBEGIN");}
"}" {printf("tACCEND");}
{SPACE} {printf("%s", yytext);}
\n {printf("tNEWLINE\n");}
\b {printf("tBACKSPACE");}
{NUMBER} {printf("tNUMBER");}
{WORD} {printf("tWORD");}
. {printf("NNMATCH : %s", yytext);nmbNonMatch++;}
%%
int main(){
	yylex();
	printf("\n Nombre non matché : %d\n", nmbNonMatch);
}