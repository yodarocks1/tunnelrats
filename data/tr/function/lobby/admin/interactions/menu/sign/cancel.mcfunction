execute if score #admin.sign.interaction status matches 1 as @e[tag=admin.rename,type=interaction] at @s run function tr:lobby/admin/interactions/menu/sign/remove
execute if score #admin.sign.interaction status matches 2 as @e[tag=admin.new,type=interaction] at @s run function tr:lobby/admin/interactions/menu/sign/remove
execute if score #admin.sign.interaction status matches 3 as @e[tag=admin.save_as,type=interaction] at @s run function tr:lobby/admin/interactions/menu/sign/remove

scoreboard players set #admin.sign.interaction status 0