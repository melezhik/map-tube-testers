run_story('lyon/map');

use common;

my $r;

my $list = data_to_routes(our $map, \$r); 

set_stdout($r);

sub generator { $list }


1;

__DATA__
Route 1|Foch|Flachet|Foch,Masséna,Charpennes - Charles Hernu,République - Villeurbanne,Gratte-Ciel,Flachet
Route 2|cuire|GARIBALDI|Cuire,Hénon,Croix-Rousse,Croix-Paquet,Hôtel de Ville - Louis Pradel,Cordeliers,Bellecour,Guillotière - Gabriel Péri,Saxe - Gambetta,Garibaldi


   
