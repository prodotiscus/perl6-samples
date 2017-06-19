#!/usr/bin/perl6
# Simple cookie string parser
#
my Str $cookie = 'foo=bar,count=1,date=01/11/17 14:33';
grammar cookies {
    token key     { \w+ }
    token value   { <-[,]>+ }
    token pair    { <key> \h* '=' \h* <value> }
    token TOP     { <pair>* % [','+] }
}
say cookies.parse($cookie);
