#!/usr/bin/perl

use strict; use warnings;
use Map::Tube::London;
my $r;
our @routes = ();

my $tube = Map::Tube::London->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    my $shortest_one =  $tube->get_shortest_route($from,$to);
    my $expected_one =  _expected_route($expected);
    push @routes, "$expected_one";

    $r.= "$description found: $shortest_one\n$description expected: $expected_one\n\n";

}

sub _expected_route {
    my ($route) = @_;
    my $nodes   = [];
    foreach my $name (split /\,/,$route) {
        push @$nodes, $tube->get_node_by_name($name);
    }

    return Map::Tube::Route->new(
        { from  => $nodes->[0],
          to    => $nodes->[-1],
          nodes => $nodes
        });
}

set_stdout($r);

1;


__DATA__
Route 1|Wembley Central|Bond Street|Wembley Central,Stonebridge Park,Harlesden,Willesdon Junction,Shepherd's Bush,Holland Park,Notting Hill Gate,Queensway,Lancaster Gate,Marble Arch,Bond Street
Route 2|Bond Street|Euston|Bond Street,Oxford Circus,Warren Street,Euston
Route 3|White City|Victoria|White City,Shepherd's Bush,Kensington (Olympia),Earl's Court,Gloucester Road,South Kensington,Sloane Square,Victoria
Route 4|Temple|Farringdon|Temple,Embankment,Waterloo,Bank,Moorgate,Barbican,Farringdon
Route 5|Turnham Green|Whitechapel|Turnham Green,Hammersmith,Barons Court,Earl's Court,Gloucester Road,South Kensington,Knightsbridge,Hyde Park Corner,Green Park,Westminster,Waterloo,Bank,Shadwell,Whitechapel
Route 6|Goldhawk Road|Wembley Central|Goldhawk Road,Shepherd's Bush Market,Wood Lane,White City,Shepherd's Bush,Willesdon Junction,Harlesden,Stonebridge Park,Wembley Central
Route 7|Wembley Central|Marylebone|Wembley Central,Stonebridge Park,Harlesden,Willesdon Junction,Shepherd's Bush,Holland Park,Notting Hill Gate,Bayswater,Paddington,Edgware Road,Marylebone
Route 8|Baker Street|Neasden|Baker Street,Finchley Road,Wembley Park,Neasden
Route 9|Baker Street|Preston Road|Baker Street,Finchley Road,Wembley Park,Preston Road
Route 10|Oval|Euston|Oval,Kennington,Waterloo,Westminster,Green Park,Oxford Circus,Warren Street,Euston
Route 11|South Ealing|Alperton|South Ealing,Acton Town,Ealing Common,North Ealing,Park Royal,Alperton
Route 12|Bank|Westminster|Bank,Waterloo,Westminster
Route 13|Hoxton|Gospel Oak|Hoxton,Haggerston,Dalston Junction,Dalston Kingsland,Canonbury,Highbury & Islington,Caledonian Road & Barnsbury,Camden Road,Kentish Town West,Gospel Oak
Route 14|Baker Street|North Harrow|Baker Street,Finchley Road,Harrow-on-the-Hill,North Harrow
Route 15|Baker Street|Croxley|Baker Street,Finchley Road,Harrow-on-the-Hill,Moor Park,Croxley
Route 16|Sloane Square|Westminster|Sloane Square,Victoria,St. James's Park,Westminster
Route 17|Westferry|Cannon Street|Westferry,Limehouse,Shadwell,Bank,Monument,Cannon Street
Route 18|Westferry|Cannon      Street|Westferry,Limehouse,Shadwell,Bank,Monument,Cannon Street
Route 19|   Westferry|Cannon      Street|Westferry,Limehouse,Shadwell,Bank,Monument,Cannon Street
Route 20|Westferry    |Cannon      Street|Westferry,Limehouse,Shadwell,Bank,Monument,Cannon Street
Route 21|Westferry    |   Cannon      Street    |Westferry,Limehouse,Shadwell,Bank,Monument,Cannon Street
Route 22|westferry    |   Cannon      Street    |Westferry,Limehouse,Shadwell,Bank,Monument,Cannon Street
Route 23|Tower Gateway|Aldgate|Tower Gateway,Tower Hill,Aldgate
Route 24|Liverpool Street|Monument|Liverpool Street,Bank,Monument
