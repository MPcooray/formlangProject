all:
	bison -d parser.y
	flex lexer.l
	gcc -o formgen parser.tab.c lex.yy.c -lfl
