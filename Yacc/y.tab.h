/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     tINT = 258,
     tACCBEGIN = 259,
     tACCEND = 260,
     tPARBEGIN = 261,
     tPAREND = 262,
     tMAIN = 263,
     tPRINTF = 264,
     tCONST = 265,
     tNOT = 266,
     tQUOTE = 267,
     tCOMMA = 268,
     tMULTIPLY = 269,
     tDIVIDE = 270,
     tADD = 271,
     tEQUAL = 272,
     tLESS = 273,
     tEOL = 274,
     tNEWLINE = 275,
     tBACKSPACE = 276,
     tNUMBER = 277,
     tWORD = 278
   };
#endif
/* Tokens.  */
#define tINT 258
#define tACCBEGIN 259
#define tACCEND 260
#define tPARBEGIN 261
#define tPAREND 262
#define tMAIN 263
#define tPRINTF 264
#define tCONST 265
#define tNOT 266
#define tQUOTE 267
#define tCOMMA 268
#define tMULTIPLY 269
#define tDIVIDE 270
#define tADD 271
#define tEQUAL 272
#define tLESS 273
#define tEOL 274
#define tNEWLINE 275
#define tBACKSPACE 276
#define tNUMBER 277
#define tWORD 278




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


