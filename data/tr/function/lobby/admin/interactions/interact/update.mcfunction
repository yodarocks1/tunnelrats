scoreboard players operation @s x += #x tmp
scoreboard players operation @s y += #y tmp
scoreboard players operation @s z += #z tmp

execute if score @s x matches ..0 run scoreboard players set @s x 1
execute if score @s y matches ..0 run scoreboard players set @s y 1
execute if score @s z matches ..0 run scoreboard players set @s z 1
execute if score @s x matches 100.. run scoreboard players set @s x 99
execute if score @s y matches 100.. run scoreboard players set @s y 99
execute if score @s z matches 100.. run scoreboard players set @s z 99

scoreboard players operation @s p += #general tmp
execute if score @s p matches ..0 run scoreboard players set @s p 1
execute if score @s p matches 10000.. run scoreboard players set @s p 9999

execute if entity @s[tag=admin.base] run function tr:lobby/admin/interactions/update/base
execute if entity @s[tag=!admin.base] run function tr:lobby/admin/interactions/update/block
scoreboard players set #admin.dirty status 1