statements	:statement
		| statement SEMICOLON statement

statement	: if_statement
		| while_statement
		| assign_statement
		| program

if_statement  : if condition then statement
                | if condition then statement else statement

while_statement       : while condition do statement

assign_statement      : identifier ASSIGN expr

condition     : expr relop expr

relop         : LESS_THAN
                | GREATER_THAN

expr          : expr binaryOp expr
                | value

binaryOp      : PLUS
                | MINUS

value         : number
                | identifier

identifier    : letter
                | identifier letter
                | identifier digit

number        : 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

letter        : a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|
                    A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z

