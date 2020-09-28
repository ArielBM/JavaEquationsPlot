package Analizadores;

import java_cup.runtime.*;
import java.util.ArrayList;
import java.util.LinkedList;

%%


%{
    public static LinkedList<NodoError> TablaErr = new LinkedList<NodoError>();
    public int bandera = 0;
%}


//-------> Directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode


//---> Expresiones Regulares
numero = [0-9]+
letra = [a-zA-Z]


//------> Estados

%%
/*------------  3raa Area: Reglas Lexicas ---------*/

//-----> Simbolos


<YYINITIAL> "-"           {System.out.println("Reconocido <<"+yytext()+">>, Signo Menos"); 
                            return new Symbol(Simbolos.menos, yycolumn + 1, yyline + 1 ,yytext());}

<YYINITIAL> "+"           {System.out.println("Reconocido <<"+yytext()+">>, Signo Mas"); 
                            return new Symbol(Simbolos.mas, yycolumn + 1, yyline + 1 ,yytext());}

<YYINITIAL> "/"           {System.out.println("Reconocido <<"+yytext()+">>, Signo Division"); 
                            return new Symbol(Simbolos.division, yycolumn + 1, yyline + 1 ,yytext());}

<YYINITIAL> "*"           {System.out.println("Reconocido <<"+yytext()+">>, Signo Multiplicacion"); 
                            return new Symbol(Simbolos.multi, yycolumn + 1, yyline + 1 ,yytext());}

<YYINITIAL> "**"           {System.out.println("Reconocido <<"+yytext()+">>, Potencia"); 
                            return new Symbol(Simbolos.pote1, yycolumn + 1, yyline + 1 ,yytext());}

<YYINITIAL> "^"           {System.out.println("Reconocido <<"+yytext()+">>, Potencia"); 
                            return new Symbol(Simbolos.pote2, yycolumn + 1, yyline + 1 ,yytext());}

//-----------> SIMBOLOS ER

<YYINITIAL> {numero}            {System.out.println("Reconocio "+yytext()+" como un NUMERO"); 
                                return new Symbol(Simbolos.numero, yycolumn + 1, yyline + 1 ,yytext());}

<YYINITIAL> {letra}             {System.out.println("Reconocio "+yytext()+" como una LETRA"); 
                                return new Symbol(Simbolos.letra, yycolumn + 1, yyline + 1 ,yytext());}

//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos
.                       { System.out.println("Error Lexico " + yytext() + " Linea "+yyline + 1+" Columna "+yycolumn + 1);
                          NodoError datos = new NodoError(yytext(),"Error Léxico", (yyline + 1), yycolumn + 1, "Símbolo no Reconocido");
                          TablaErr.add(datos);
                          bandera = 1;} 