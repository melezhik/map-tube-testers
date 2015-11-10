package common;

1;

package main;
use utf8;

sub data_to_routes {

    my $tube = shift;
    my $s_ref = shift;

    my @list;
    my $r;

    while (<DATA>) {
    
        chomp;
        next if /^\#/;
        next unless /\S+/;
    
        my ($r_id, $from, $to, $expected) = split /\|/;
        my $route =  join "\n", map { my $a = $_->name; utf8::encode($a); $a } @{$tube->get_shortest_route($from,$to)->nodes};
    
        ${$s_ref}.= "$r_id\n>>>\n";
        ${$s_ref}.="$route\n<<<\n\n";
    
        push @list, "validator: [ 1, qq{$from ... $to} ]";
        push @list, "begin:";
        push @list, "$r_id";
        push @list, "<<<";
        push @list, (split /,/, $expected);
        push @list, ">>>";
        push @list, "end:";
    
    }

    return [@list];
    
}

1;

