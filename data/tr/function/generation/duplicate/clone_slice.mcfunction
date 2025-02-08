$clone $(dupeX) -50 -50 $(dupeX) 50 50 -$(dupeX) -50 -50

# remove leftover entities
$execute positioned -$(dupeX) -50 -50 run tp @e[type=!player,tag=!tr.map,dx=1,dy=100,dz=100] ~ -64 ~
execute positioned ~ -64 ~ run kill @e[type=!player,tag=!tr.map,distance=..10]

# biome
$fillbiome -$(dupeX) -50 -50 -$(dupeX) 50 50 forest replace the_void