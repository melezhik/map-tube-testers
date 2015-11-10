run_story('barcelona/map');

use common;

my $r;

my $list = data_to_routes(our $map, \$r); 

set_stdout($r);

sub generator { $list }


1;

__DATA__
Route 1|Roquetes|Maragall|Roquetes,Trinitat Nova,Via Júlia,Llucmajor,Maragall
Route 2|roquetes|maragall|Roquetes,Trinitat Nova,Via Júlia,Llucmajor,Maragall
