run_story('nyc/map');
use common;

my $tube = Map::Tube::NYC->new;

my $r;

my $list = data_to_routes($tube, \$r); 

set_stdout($r);

sub generator { $list }


1;


__DATA__
Route 1|Broadway|Classon Avenue|Broadway,Flushing Avenue,Myrtle-Willoughby Avenues,Bedford-Nostrand Avenues,Classon Avenue
Route 2|   Broadway|Classon Avenue|Broadway,Flushing Avenue,Myrtle-Willoughby Avenues,Bedford-Nostrand Avenues,Classon Avenue
Route 3|Broadway|   Classon Avenue|Broadway,Flushing Avenue,Myrtle-Willoughby Avenues,Bedford-Nostrand Avenues,Classon Avenue
Route 4|    Broadway|   Classon Avenue|Broadway,Flushing Avenue,Myrtle-Willoughby Avenues,Bedford-Nostrand Avenues,Classon Avenue
Route 5|Broadway   |Classon Avenue  |Broadway,Flushing Avenue,Myrtle-Willoughby Avenues,Bedford-Nostrand Avenues,Classon Aven
