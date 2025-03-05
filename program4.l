%{
#include<stdio.h>
%}
%%
auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|typedef|union { printf("valid keyword\n"); }
"+"|"-"|"*"|"/"|"%" { printf("valid operator\n"); }
"{"|"}"|"["|"]"|"("|")"|","|";" { printf("valid separator\n"); }
^[a-zA-Z_][a-zA-Z0-9_]* { printf("valid identifier\n"); }
.* { printf("Unknown\n"); }
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter any identifier you want to check: ");
    yylex();
    return 0;
}

