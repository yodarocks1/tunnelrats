scoreboard players set #r tmp 1
execute if score #admin.sign.interaction status matches 1 store result score #r tmp as @e[tag=admin.rename,type=interaction] at @s run function tr:lobby/admin/interactions/menu/sign/rename
execute if score #admin.sign.interaction status matches 2 store result score #r tmp as @e[tag=admin.new,type=interaction] at @s run function tr:lobby/admin/interactions/menu/sign/new
execute if score #admin.sign.interaction status matches 3 store result score #r tmp as @e[tag=admin.save_as,type=interaction] at @s run function tr:lobby/admin/interactions/menu/sign/save_as

execute if score #r tmp matches 0 run return 0
function tr:lobby/admin/interactions/menu/sign/cancel