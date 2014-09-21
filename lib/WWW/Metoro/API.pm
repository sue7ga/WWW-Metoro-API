package WWW::Metoro::API;
use 5.008005;
use strict;
use warnings;
use Class::Accessor::Lite;
use URI;

our $VERSION = "0.01";

use constant END_POINT => 'https://api.tokyometoroapp.jp/api/v2/';

use Class::Accessor::Lite(
   new => 1,
   ro => [qw(
      api_key
   )],
);

sub metoro{
 my $self = shift;
 
 my $uri = END_POINT.'datapoints';
 my $url = URI->new($uri);
 my $apikey = $self->api_key;
 $url->query_form("rdf:type" => 'odpt:station',"acl:consumerKey" => $apikey);
 return $url;
}

1;
__END__

=encoding utf-8

=head1 NAME

WWW::Metoro::API - It's new $module

=head1 SYNOPSIS

    use WWW::Metoro::API;

=head1 DESCRIPTION

WWW::Metoro::API is ...

=head1 LICENSE

Copyright (C) sue7ga.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

sue7ga E<lt>sue77ga@gmail.comE<gt>

=cut

