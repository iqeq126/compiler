#include <stdio.h>

int yyparse() ;
int main(){
#if YYDEBUG == 1
extern int yydebug;
yydebug = 1;
#endif
	return(yyparse());
}

void yyerror(char *s){
	fprintf(stderr, "Error : Exiting %s\n", s);
}
