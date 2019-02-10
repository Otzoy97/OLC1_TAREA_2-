package analizadores;

import java_cup.runtime.Symbol;
%%
%{
    public static String Err;
%}

%cupsym sym
%class Scanner
%cup
%public
%unicode
%line 
%column
%char
%ignorecase

letra=[A-Za-z]
numero=[0-9]+
espacio=\t|\f|" "|\r|\n
%%

{espacio} {}
{numero} {return new Symbol(sym.NUMBER,yycolumn,yyline,yytext());}
{letra}  {return new Symbol(sym.LETTER,yycolumn,yyline,yytext());}
"("      {return new Symbol(sym.IZQ,yycolumn,yyline,yytext());}
")"      {return new Symbol(sym.DER,yycolumn,yyline,yytext());}
"+"      {return new Symbol(sym.PLUS,yycolumn,yyline,yytext());}
"-"      {return new Symbol(sym.MINUS,yycolumn,yyline,yytext());}
"*"      {return new Symbol(sym.PRODUCT,yycolumn,yyline,yytext());}
"/"      {return new Symbol(sym.DIVISION,yycolumn,yyline,yytext());}
";"      {return new Symbol(sym.SEMICOLON,yycolumn,yyline,yytext());}

. {Err = Err + "Error Léxico: Lexema "+yytext()+", Linea "+yyline+", Columna "+yychar+"\n";}
