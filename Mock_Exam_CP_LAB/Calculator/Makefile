TARGET = calc
OBJECTS = lex.yy.c parser.tab.c parser.tab.h



$(TARGET) : $(OBJECTS)
	                sudo gcc -o $@ $^ -lfl
lex.yy.c : scanner.l parser.tab.h
	                sudo flex $^
parser.tab.c parser.tab.h : parser.y
	                sudo bison -d $^
clean:
	                sudo rm $(OBJECTS) $(TARGET)


