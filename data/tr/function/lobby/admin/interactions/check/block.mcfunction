# block
execute unless block ~ ~ ~ air positioned ~1 ~ ~ align xyz unless entity @e[type=text_display,tag=admin.block,dx=0,dy=0,dz=0] run scoreboard players set #admin.dirty status 1
execute unless block ~ ~ ~ air positioned ~1 ~ ~ align xyz unless entity @e[type=text_display,tag=admin.block,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 summon text_display run function tr:lobby/admin/interactions/check/summon_block
scoreboard players remove #y tmp 1
execute if score #y tmp matches 1.. positioned ~ ~1 ~ run function tr:lobby/admin/interactions/check/block