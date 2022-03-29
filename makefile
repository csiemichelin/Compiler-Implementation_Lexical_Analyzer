scanner: main.o lex.yy.o 
	gcc -o scanner main.o lex.yy.o -lfl 
 
lex.yy.o: lex.yy.c 
	gcc -c lex.yy.c 
 
lex.yy.c: sunflower.l 
	flex sunflower.l 
 
main.o: main.c 
	gcc -c main.c

clean: 
	rm scanner main.o lex.yy.o
