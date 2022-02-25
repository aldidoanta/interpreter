grammar LittleBasic;
import LBExpression, LBTokens;

prog: block EOF;

statement
    : letstmt
    | printstmt
    | inputstmt
    | COMMENT;

block
    : (statement (NEWLINE+ | EOF))*
    ;

letstmt
    : LET? vardecl EQ expression
    ;

vardecl
    : varname varsuffix?
    ;

varname
    : ID
    ;

varsuffix
    : DOLLAR
    ;

printstmt
    : PRINT expression;

inputstmt
    : INPUT string vardecl
    ;
