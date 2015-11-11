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
F.e. Map::Tube::London
* route_id - unique key for route, just a string
F.e. ROUTE_1
* start station name
F.e.  
* destination station name
* intermediate station list

A full exmaple:

* Map class 
Map::Tube::London

* Shortest routes

    Route 1|Wembley Central|Bond Street|Wembley Central,Stonebridge Park,Harlesden,Willesdon Junction,Shepherd's    Bush,Holland Park,Notting Hill Gate,Queensway,Lancaster Gate,Marble Arch,Bond Street
    Route 2|Bond Street|Euston|Bond Street,Oxford Circus,Warren Street,Euston





