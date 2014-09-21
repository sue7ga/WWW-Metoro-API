use strict;
use warnings;
use Test::More;
use WWW::Metoro::API;
use utf8;
use Data::Dumper;

my $metoro = WWW::Metoro::API->new(api_key => 'e4346dc05e12b8e457bdfe693a858f83aa7a31ebed6af708f410543c4e5e5c4b');

is($metoro->api_key,'e4346dc05e12b8e457bdfe693a858f83aa7a31ebed6af708f410543c4e5e5c4b');

print Dumper $metoro->metoro;

done_testing;