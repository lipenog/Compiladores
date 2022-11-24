%{
    #include "lexico.c"
%}

%token NUM
%token MAIS
%token MENOS
%token ENTER

%start comando

%%
comando : expr ENTER { printf("resultado = %d\n ", $1); };

expr : NUM              {$$ = $1;}
    | expr MAIS expr    {$$ = $1 + $3;}
    | expr MENOS expr   {$$ = $1 - $3;}
    ;
%%

void yyerror(char *s){
    printf("Erro: %s\n\n", s);
    exit(10);
}

int main(){
    if(yyparse()){
        puts("rejeita!");
    } else {
        puts("aceita!");
        return 0;
    }
}