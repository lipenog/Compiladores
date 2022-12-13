simples: lexico.l sintatico.y
	flex -o lexico.c lexico.l;\
	bison -v -d sintatico.y -o sintatico.c;\
	gcc sintatico.c -o simples;
limpa: ;
	rm simples lexico.c sintatico.c sintatico.h sintatico.output
resolve: ;
	./simples < ./testes/teste1.simples > ./resultados/teste1.mvs
	./simples < ./testes/teste2.simples > ./resultados/teste2.mvs

