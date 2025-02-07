
loot replace entity @e[tag=tr.tmp_name,limit=1] weapon.mainhand loot tr:set_name

data modify storage tr:tmp name set from entity @e[limit=1,tag=tr.tmp_name,sort=nearest] HandItems[0].components."minecraft:profile".name
$execute store result storage tr:tmp score int $(scale) run scoreboard players get @s stat.$(obj)

function tr:game/ending/stats/display/store_one with storage tr:tmp