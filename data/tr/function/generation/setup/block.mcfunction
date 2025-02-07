scoreboard players remove #y tmp 1
execute if block ~ ~ ~ air positioned ~ ~1 ~ run function tr:generation/setup/block
execute if score #y tmp matches ..0 run return 0

data modify storage tr:tmp block set value {id:"minecraft:air",nbt:""}

## get block id
# is it a block entity?
execute store success score #isBlockEntity tmp if data block ~ ~ ~ {}
# is it one of the special blocks?
execute if block ~ ~ ~ #tr:generation_special run function tr:generation/setup/special
# is it a block entity (e.g. chest or barrel)
execute unless block ~ ~ ~ #tr:generation_special if score #isBlockEntity tmp matches 1 run function tr:generation/setup/block_entity
# is it anything else
execute unless block ~ ~ ~ #tr:generation_special unless score #isBlockEntity tmp matches 1 run function tr:generation/setup/break_block

# get percentage if there is one
execute if score #y tmp matches ..10 store result storage tr:tmp block.p float 0.01 positioned ~1 ~ ~ align xyz run scoreboard players get @e[limit=1,type=text_display,tag=admin.block,dx=1,dy=0,dz=0] p

# copy value
data modify storage tr:tmp section.blocks append from storage tr:tmp block

# run again
execute positioned ~ ~1 ~ run function tr:generation/setup/block
