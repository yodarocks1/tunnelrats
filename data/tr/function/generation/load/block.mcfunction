execute unless data storage tr:tmp load.slice.blocks[0] run return 0

data modify storage tr:tmp load.block set from storage tr:tmp load.slice.blocks[0]
data remove storage tr:tmp load.slice.blocks[0]

# block
function tr:generation/load/setblock with storage tr:tmp load.block
execute if block ~ ~ ~ air run setblock ~ ~ ~ barrier
execute if block ~ ~ ~ water run setblock ~ ~ ~ water_cauldron[level=3]
execute if block ~ ~ ~ lava run setblock ~ ~ ~ lava_cauldron

# sign
# execute if data storage tr:tmp load.block.p positioned ~1 ~ ~ run function tr:generation/load/setsign with storage tr:tmp load.block

# entity
scoreboard players add #b tmp 1
execute if score #b tmp matches 1 positioned ~1 ~ ~ align xyz unless entity @e[type=text_display,tag=admin.base,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 summon text_display run function tr:lobby/admin/interactions/load/base
execute if score #b tmp matches 2.. positioned ~1 ~ ~ align xyz unless entity @e[type=text_display,tag=admin.base,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 summon text_display run function tr:lobby/admin/interactions/load/block

# next block
execute positioned ~ ~1 ~ run function tr:generation/load/block