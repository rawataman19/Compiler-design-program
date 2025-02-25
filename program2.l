%{
#include<stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-8_]*  {printf("\nVALID Identifier");}
^[^a-zA-z_]+  {printf("\nINVALID Identifier");}
.* { printf("INVAlid Identifier");}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    return 0;
}
