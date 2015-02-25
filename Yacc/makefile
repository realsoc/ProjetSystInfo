LEX = flex
YACC = yacc -d
CC = gcc
go: y.tab.c lex.yy.c
	$(CC)  y.tab.c lex.yy.c -ll -o toto
y.tab.c: source.yacc
	$(YACC) source.yacc
lex.yy.c: source.lex
	$(LEX) source.lex