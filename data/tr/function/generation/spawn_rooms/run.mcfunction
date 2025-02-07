$execute positioned $(totalX) 0 0 run forceload add ~ ~-10 ~10 ~10
$execute positioned -$(totalX) 0 0 run forceload add ~ ~-10 ~-10 ~10

# room1
$place template tr:starter_room $(totalX) -3 -3
$execute positioned $(totalX) 0 0 run setblock ~1 -2 ~ $(color1)_bed[facing=east,part=foot]
$execute positioned $(totalX) 0 0 run setblock ~2 -2 ~ $(color1)_bed[facing=east,part=head]

$execute positioned $(totalX) -50 -50 run tp @e[type=!player,dx=10,dy=100,dz=100] ~ -64 ~
execute positioned ~ -64 ~ run kill @e[type=!player,distance=..10]
$execute positioned $(totalX) ~ ~ run fillbiome ~ ~-5 ~-5 ~7 ~15 ~5 the_void

# room 2
$place template tr:starter_room -$(totalX) -3 3 180
$execute positioned -$(totalX) 0 0 run setblock ~-1 -2 ~ $(color2)_bed[facing=west,part=foot]
$execute positioned -$(totalX) 0 0 run setblock ~-2 -2 ~ $(color2)_bed[facing=west,part=head]

$execute positioned -$(totalX) -50 -50 run tp @e[type=!player,dx=-10,dy=100,dz=100] ~ -64 ~
execute positioned ~ -64 ~ run kill @e[type=!player,distance=..10]
$execute positioned -$(totalX) ~ ~ run fillbiome ~ ~-5 ~-5 ~-7 ~15 ~5 the_void


forceload remove all