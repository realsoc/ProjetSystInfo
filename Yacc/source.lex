%{
	#include <stdlib.h>
	#include "y.tab.h"
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

main {return tMAIN;}
printf {return tPRINTF;}
int {return tINT;}
const {return tCONST;}
"!" {return tNOT;}
"\"" {return tQUOTE;}
"," {return tCOMMA;}
"*" {return tMULTIPLY;}
"/" {return tDIVIDE;}
"+" {return tADD;}
"=" {return tEQUAL;}
"-" {return tLESS;}
";" {return tEOL;}
"(" {return tPARBEGIN;}
")" {return tPAREND;}
"{" {return tACCBEGIN;}
"}" {return tACCEND;}
{SPACE} {}
\n {}
\b {return tBACKSPACE;}
{NUMBER} {return tNUMBER;}
{WORD} {return tWORD;}
. {printf("NNMATCH : %s", yytext);nmbNonMatch++;}
%%
int main(){
	yyparse();
	printf("\n Nombre non matché : %d\n", nmbNonMatch);
}