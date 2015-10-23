our $map;

run_story('london/map');

my $r;

for my $l ( sort { $a->name() eq $b->name() } @{$map->get_lines}){

    $r.=$l->name()." : ";

    $r.= "\t";

    for my $s ( sort { $a->name() eq $b->name() } @{$map->get_stations($l)}){
        $r.= $s->name().(' ');
    }

    $r.="\n\n\n";

}



set_stdout($r);

