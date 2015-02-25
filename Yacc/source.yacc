%{
#include <stdio.h>	
yyerror(const char *err) {
	fprintf(stderr, "%s\n",err);
}
%}
%error-verbose
%token tINT tACCBEGIN tACCEND tPARBEGIN tPAREND tMAIN tPRINTF tCONST tNOT tQUOTE tCOMMA tMULTIPLY tDIVIDE tADD tEQUAL tLESS tEOL tNEWLINE tBACKSPACE tNUMBER tWORD
 
%start S
%% 
S : tINT tMAIN tPARBEGIN tPAREND tACCBEGIN Body tACCEND;
Vide : ;
Type : tINT 
	|tCONST tINT;

Body : Decl Body | Vide;

Decl : Type SglDecl MultDecl tEOL
	| Type SglDecl tEOL;

SglDecl : tWORD 
	| tWORD tEQUAL Number;
MultDecl : tCOMMA SglDecl
	|tCOMMA SglDecl MultDecl;

Number : tNUMBER
	| tWORD
	| tNUMBER Operation Number
	| tWORD Operation Number;



Operation : tADD |tLESS | tMULTIPLY | tDIVIDE;

