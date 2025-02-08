$execute positioned $(totalX) -50 -50 \
         run tag @e[type=minecraft:marker,tag=tr.map,dx=-$(totalX),dy=100,dz=100] add tr.map.flip
$execute positioned -$(totalX) -50 -50 \
         positioned ~-1 ~ ~ \
         run tag @e[type=minecraft:marker,tag=tr.map,dx=$(totalX),dy=100,dz=100] add tr.map.noflip
execute positioned -0.5 -50 -50 \
        run tag @e[type=minecraft:marker,tag=tr.map,dx=1,dy=100,dz=100] add tr.map.center