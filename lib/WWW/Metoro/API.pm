package WWW::Metoro::API;
use 5.008005;
use strict;
use warnings;
use Mouse;
use utf8;
use URI;
use LWP::UserAgent;

our $VERSION = "0.01";

use constant END_POINT => 'https://api.tokyometoroapp.jp/api/v2/';

has 'api_key' => (is => 'rw',isa => 'Str',required => 1);

sub metoro{
 my $self = shift;
 my $uri = END_POINT.'datapoints';
 my $url = URI->new($uri);
 my $param = {
  "acl:consumerKey" => $self->api_key,
  "rdf:type" => "odpt:Train",
 };
 $url->query_form(%$param);
 $url =~ s/%3A/:/g;
 my $ua = LWP::UserAgent->new;
 my $res = $ua->get($url);
 return $res;
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

