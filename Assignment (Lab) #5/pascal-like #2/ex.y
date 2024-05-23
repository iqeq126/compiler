%{
#ifdef PRINT
#define TOKEN(t) printf("Token: " #t "\n");
#else
#define TOKEN(t) return(t);
#endif  

enum { COLON = 257, SEMICOLON, COMMA, BRA, CKET, DOT, APOS, EQUALS,
       LESSTHAN, GREATERTHAN, PLUS, SUBTRACT, MULTIPLY, DIVIDE,
       ID, NUMBER, CHARACTER_CONSTANT };
%}
