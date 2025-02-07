# create preview of currently selected arena
kill @e[type=block_display,tag=preview,distance=..10]

execute store result score #sections tmp run data get storage tr:tmp preview.sections
scoreboard players set #x tmp 500

scoreboard players set #maxY tmp 0

execute store result score #tmp tmp run data get storage tr:tmp preview.totalX
scoreboard players remove #tmp tmp 5
scoreboard players set #scale tmp 50000
scoreboard players operation #scale tmp /= #tmp tmp
execute if score #scale tmp matches 701.. run scoreboard players set #scale tmp 700
execute store result storage tr:tmp preview.scale float 0.0001 run scoreboard players get #scale tmp
execute store result storage tr:tmp preview.scale_half float -0.00005 run scoreboard players get #scale tmp

$execute positioned $(x) $(y) $(z) summon block_display run function tr:lobby/preview/bed with storage tr:tmp preview
scoreboard players set #r tmp 1
$execute if score #sections tmp matches 1.. positioned $(x) $(y) $(z) summon block_display run function tr:lobby/preview/section with storage tr:tmp preview
execute if score #r tmp matches 0 run kill @e[type=block_display,tag=preview]

# move to center of table
scoreboard players remove #x tmp 500
execute store result storage tr:tmp preview.x double -0.001 run scoreboard players operation #x tmp /= 2 const
execute store result storage tr:tmp preview.y double 0.001 run scoreboard players operation #maxY tmp /= 2 const
function tr:lobby/preview/move with storage tr:tmp preview