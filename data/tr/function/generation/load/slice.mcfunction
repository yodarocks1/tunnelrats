execute unless data storage tr:tmp load.arena.sections[0] run return 0

data modify storage tr:tmp load.slice set from storage tr:tmp load.arena.sections[0]
data remove storage tr:tmp load.arena.sections[0]

# base sign
# setblock ~1 ~ ~ oak_wall_sign[facing=east]{front_text:{messages:['{"nbt":"load.slice.x","storage":"tr:tmp"}','{"nbt":"load.slice.y","storage":"tr:tmp"}','{"nbt":"load.slice.z","storage":"tr:tmp"}','""']}}

# blocks
scoreboard players set #b tmp 0
execute positioned ~ ~1 ~ run function tr:generation/load/block

# run again
execute positioned ~ ~ ~-1 run function tr:generation/load/slice