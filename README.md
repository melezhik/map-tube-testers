# map-tube-testers

automatic tests for map-tube modules


# install

    carton

# run all tests

    carton exec strun

# run a single story

    carton exec strun --story london/shortest-routes/


# add new map to test

Please create an issue or write me, providing following information:

* map class

F.e. `Map::Tube::London`

* shortest routes list

Should confirm the format:

`$route_id|$start_station_name|$destination_station_name|$start_station_name,$a,$b,$c,...$destination_station_name`

Where:

* route_id 

Unique key for route, just a string. F.e. `Route 1`

* start station name

F.e.  `Wembley Central`

* destination station name

F.e. `Bond Street`

* intermediate stations list

A list of stattion between start station and destination station, separated by comma sign. 

F.e. `Wembley Central,Stonebridge Park,Harlesden,Willesdon Junction,Shepherd's    Bush,Holland Park,Notting Hill Gate,Queensway,Lancaster Gate,Marble Arch`

A full exmaple is here:

Map class - `Map::Tube::London`

Shortest routes list:

    Route 1|Wembley Central|Bond Street|Wembley Central,Stonebridge Park,Harlesden,Willesdon Junction,Shepherd's    Bush,Holland Park,Notting Hill Gate,Queensway,Lancaster Gate,Marble Arch,Bond Street
    Route 2|Bond Street|Euston|Bond Street,Oxford Circus,Warren Street,Euston
    





