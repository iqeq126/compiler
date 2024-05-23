%{
#include <stdio.h>
int yylex();
void yyerror(char *);
int yyparse(void);
%}

%token  SEMICOLON ASSIGN LESS_THAN GREATER_THAN PLUS MINUS begin_T end_T
        if_T then_T else_T while_T do_T
%token  ID NUMBER

%%

program		:begin_T statements end_T
		;
statements    :statement
                | statement SEMICOLON statement
		;
statement     : if_statement
                | while_statement
                | assign_statement
                | program
		;
if_statement  : if_T condition then_T statement
		;
while_statement       : while_T condition do_T statement
		;
assign_statement      : ID ASSIGN expr
		;
condition     : expr relop expr
		;
relop         : LESS_THAN
                | GREATER_THAN
		;
expr         : value binaryOp expr
                | value
		;
binaryOp      : PLUS
                | MINUS
		;
value         : NUMBER
                | ID
		;
%%

#include "lex.yy.c"
