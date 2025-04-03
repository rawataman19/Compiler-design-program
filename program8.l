%{
#include<stdio.h>
%}
%%
"//".* ;
"/*"(.*\n)*"*/" ;
%%
int yywrap(){
    return 1;
}
int main(){
    extern FILE *yyin, *yyout;
    yyin = fopen("code.c", "r");
    yyout = fopen("ou.c", "w");
    yylex();

    return 0;
}
