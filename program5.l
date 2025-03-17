%{
#include <stdio.h>

int tword = 0, tspace = 0, tchar = 0;
%}

%%

[a-zA-Z0-9]+   { tword++; tchar += yyleng; }
[ \t\n]        { tspace++; tchar++; }

%%

int yywrap() {
    return 1;
}

int main() {
    extern FILE *yyin;  
    yyin = fopen("input.txt", "r");

    if (!yyin) {
        printf("Error opening file\n");
        return 1;
    }

    yylex();

    printf("No of spaces: %d\n", tspace);
    printf("No of characters: %d\n", tchar);
    printf("No of words: %d\n", tword);

    fclose(yyin);  // Close the file
    return 0;
}

