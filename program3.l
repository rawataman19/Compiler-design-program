%{
#include<stdio.h>
%}
%%
^[-+]?[0-9]+ { printf("valid Integer number ");}
^[-+]?[0-9]*["."][0-9]+ {printf("valid floating number");}
..* {printf("Invalid Number");}
%%

int yywrap (){
   return 1;
}

int main (){
	  printf("Enter any number");
      yylex();
      return 0;
}

      

