# Fix duplicate host tags - run this once to clean up existing issues

# Remove all host/nothost tags first
tag @a remove .host
tag @a remove .nothost

# Set the first player in the host detection area as the host
tag @p[x=-5,y=25,z=-5,dx=10,dy=10,dz=10] add .host

# Set all other players as nothost
tag @a[tag=!.host,tag=!admin] add .nothost

say §6Host tags have been reset. First player in spawn area is now host.