data remove storage tr:settings arena.info
data remove storage tr:settings arena.version
data remove storage tr:settings arena.downloaded
data remove storage tr:settings arena.default
$data modify storage tr:settings arena.name set from storage tr:settings arenas[$(id)].name
$data modify storage tr:settings arena.info set from storage tr:settings arenas[$(id)].info
$data modify storage tr:settings arena.version set from storage tr:settings arenas[$(id)].version.value
$data modify storage tr:settings arena.downloaded set from storage tr:settings arenas[$(id)].downloaded
$data modify storage tr:settings arena.default set from storage tr:settings arenas[$(id)].default
$data modify storage tr:tmp preview set from storage tr:settings arenas[$(id)]

$execute if data storage tr:settings arenas[$(id)].info as @e[tag=c8,type=item_display] run data merge entity @s {item:{components:{ "minecraft:custom_model_data":{floats:[38f]}}}}
$execute unless data storage tr:settings arenas[$(id)].info as @e[tag=c8,type=item_display] run data merge entity @s {item:{components:{ "minecraft:custom_model_data":{floats:[6f]}}}}
