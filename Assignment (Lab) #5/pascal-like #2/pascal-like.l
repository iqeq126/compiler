%{
#ifdef PRINT
#define TOKEN(t) printf("Token: " #t "\n");
#else
#define TOKEN(t) return(t);
#endif
%}

digit	[0-9]
letter	[a-zA-Z]
number	{digit}+
id	{letter}({letter}|{digit})*
%%
";"     TOKEN(SEMICOLON)
":="    TOKEN(ASSIGN)
"<"     TOKEN(LESS_THAN)
">"     TOKEN(GREATER_THAN)
"+"     TOKEN(PLUS)
"-"     TOKEN(MINUS)
begin   TOKEN(begin_T)
end     TOKEN(end_T)
if      TOKEN(if_T)
then    TOKEN(then_T)
else    TOKEN(else_T)
while   TOKEN(while_T)
do      TOKEN(do_T)
{id}	TOKEN(ID)
{number}	TOKEN(NUMBER)

%%
