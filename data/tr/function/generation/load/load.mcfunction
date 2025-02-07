# clear out the old setup
fill ~1 ~ ~ ~1 ~11 ~-18 air replace #signs
fill ~ ~1 ~ ~ ~11 ~-18 air
kill @e[type=item,dx=1,dy=11,dz=-20]

execute positioned ~ ~1 ~ run kill @e[type=#tr:admin,dx=1,dy=10,dz=-19]

# load first slice
function tr:generation/load/slice

# load base section size
