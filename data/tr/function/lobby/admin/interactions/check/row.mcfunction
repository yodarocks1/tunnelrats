# check block
execute unless block ~ ~ ~ air positioned ~1 ~ ~ align xyz unless entity @e[type=text_display,tag=admin.base,dx=0,dy=0,dz=0] run scoreboard players set #admin.dirty status 1
execute unless block ~ ~ ~ air positioned ~1 ~ ~ align xyz unless entity @e[type=text_display,tag=admin.base,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 summon text_display run function tr:lobby/admin/interactions/check/summon_base

# all other blocks
scoreboard players set #y tmp 10

execute positioned ~ ~1 ~ run function tr:lobby/admin/interactions/check/block

scoreboard players remove #z tmp 1
execute if score #z tmp matches 1.. positioned ~ ~ ~-1 run function tr:lobby/admin/interactions/check/row
