data merge entity @s {block_state:{Name:"air"},Tags:["preview"]}
$execute store result entity @s transformation.scale[2] float $(scale) run data get storage tr:tmp preview.sections[0].x
$execute store result entity @s transformation.scale[1] float $(scale) run data get storage tr:tmp preview.sections[0].y
$execute store result entity @s transformation.scale[0] float $(scale) run data get storage tr:tmp preview.sections[0].z
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #x tmp
$execute store result entity @s transformation.translation[0] float $(scale_half) run data get storage tr:tmp preview.sections[0].z
$execute store result entity @s transformation.translation[1] float $(scale_half) run data get storage tr:tmp preview.sections[0].y
$execute store result entity @s transformation.translation[2] float -$(scale) run data get storage tr:tmp preview.sections[0].x

execute store success score #s tmp run data modify entity @s block_state.Name set from storage tr:tmp preview.sections[0].blocks[0].id
execute if score #s tmp matches 0 run data merge entity @s {block_state:{Name:"blue_stained_glass"},Tags:["preview"]}

$execute store result storage tr:tmp preview.sections[0].x float $(scale) run data get storage tr:tmp preview.sections[0].x
execute store result score #x2 tmp run data get storage tr:tmp preview.sections[0].x 1000
scoreboard players operation #x tmp -= #x2 tmp

execute store result score #y tmp run data get entity @s transformation.scale[1] 1000
scoreboard players operation #maxY tmp > #y tmp

data remove storage tr:tmp preview.sections[0]
scoreboard players set #r tmp 1
scoreboard players remove #sections tmp 1
execute if score #sections tmp matches 1.. summon block_display run function tr:lobby/preview/section with storage tr:tmp preview
execute if score #r tmp matches 0 run return 0
return 1