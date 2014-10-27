%{
    #include "y.tab.h"
    #include <stdlib.h>
    void yyerror(char *);
%}
/*esta fue la modificacion*/
%%

[0-9]+      {
                yylval = atoi(yytext);
                return INTEGER;
            }
[-+\n]      return *yytext;
[ \t]       ; /* skip whitespace */
.           yyerror("invalid character");

%%

int yywrap(void) {
    return 1;
}