data remove storage tr:settings arena.info
$data modify storage tr:settings arena.name set from storage tr:settings arenas[$(id)].name
$data modify storage tr:settings arena.info set from storage tr:settings arenas[$(id)].info
$data modify storage tr:tmp preview set from storage tr:settings arenas[$(id)]

$execute if data storage tr:settings arenas[$(id)].info as @e[tag=c8,type=item_display] run data merge entity @s {item:{components:{ "minecraft:custom_model_data":{floats:[38f]}}}}
$execute unless data storage tr:settings arenas[$(id)].info as @e[tag=c8,type=item_display] run data merge entity @s {item:{components:{ "minecraft:custom_model_data":{floats:[6f]}}}}