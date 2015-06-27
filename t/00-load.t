#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'String::UTF8::MD5' ) || print "Bail out!\n";
}

diag( "Testing String::UTF8::MD5 $String::UTF8::MD5::VERSION, Perl $], $^X" );
