our $map;

run_story('london/map');

use Data::Dumper;

set_stdout(join "\n", @{$map->lines});


