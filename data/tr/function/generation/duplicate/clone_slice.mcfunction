$clone $(dupeX) -50 -50 $(dupeX) 50 50 -$(dupeX) -50 -50

# remove leftover entities
$execute positioned -$(dupeX) -50 -50 run tp @e[type=!player,dx=1,dy=100,dz=100] ~ -64 ~
execute positioned ~ -64 ~ run kill @e[type=!player,distance=..10]

# biome
$fillbiome -$(dupeX) -50 -50 -$(dupeX) 50 50 forest replace the_void