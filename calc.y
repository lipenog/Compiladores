%{
    #include "lexico.c"
%}

%token NUM
%token MAIS
%token MENOS
%token ENTER

%start comando

%%
comando : comando expr ENTER
    | ;
expr : NUM
    | expr MAIS expr
    | expr MENOS expr
    ;
%%

void yyerror(char *s){
    printf("Erro: %s\n\n", s);
    exit(10);
}

int main(){
    if(yyparse()){
        puts("aceita!");
    } else {
        puts("rejeita!");
    }
}