%{
#include<stdio.h>
int lc=0,sc=0,tc=0,cc=0;
%}

%%
\n {lc++;}
[ ] {sc++;}
\t {tc++;}
. {cc++;}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    
    printf("lineCount :%d ", lc);
    printf("space Count :%d ", sc);
    printf("TabCount :%d ", tc);
    printf("OtherCount :%d ", cc);
    return 0;
}
