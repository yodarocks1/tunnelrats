execute if block ~ ~ ~ lava_cauldron run data modify storage tr:tmp block set value {id:"minecraft:lava",nbt:""}
execute if block ~ ~ ~ water_cauldron run data modify storage tr:tmp block set value {id:"minecraft:water",nbt:""}
execute if block ~ ~ ~ spawner run data modify storage tr:tmp block set value {id:"minecraft:spawner"}
execute if block ~ ~ ~ spawner run data modify storage tr:tmp block.nbt set from block ~ ~ ~
