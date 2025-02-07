scoreboard players set #x tmp 0
scoreboard players set #y tmp 0
scoreboard players set #z tmp 0
scoreboard players set #general tmp 0

execute if entity @s[tag=admin.plus_x_10] run scoreboard players set #x tmp 10
execute if entity @s[tag=admin.plus_x] run scoreboard players set #x tmp 1
execute if entity @s[tag=admin.plus_y_10] run scoreboard players set #y tmp 10
execute if entity @s[tag=admin.plus_y] run scoreboard players set #y tmp 1
execute if entity @s[tag=admin.plus_z_10] run scoreboard players set #z tmp 10
execute if entity @s[tag=admin.plus_z] run scoreboard players set #z tmp 1
execute if entity @s[tag=admin.minus_x_10] run scoreboard players set #x tmp -10
execute if entity @s[tag=admin.minus_x] run scoreboard players set #x tmp -1
execute if entity @s[tag=admin.minus_y_10] run scoreboard players set #y tmp -10 
execute if entity @s[tag=admin.minus_y] run scoreboard players set #y tmp -1
execute if entity @s[tag=admin.minus_z_10] run scoreboard players set #z tmp -10
execute if entity @s[tag=admin.minus_z] run scoreboard players set #z tmp -1

execute if entity @s[tag=admin.plus_1] run scoreboard players set #general tmp 1
execute if entity @s[tag=admin.plus_10] run scoreboard players set #general tmp 10
execute if entity @s[tag=admin.plus_100] run scoreboard players set #general tmp 100
execute if entity @s[tag=admin.plus_1000] run scoreboard players set #general tmp 1000
execute if entity @s[tag=admin.minus_1] run scoreboard players set #general tmp -1
execute if entity @s[tag=admin.minus_10] run scoreboard players set #general tmp -10
execute if entity @s[tag=admin.minus_100] run scoreboard players set #general tmp -100
execute if entity @s[tag=admin.minus_1000] run scoreboard players set #general tmp -1000

execute align xyz as @e[type=text_display,tag=admin.block,dx=1,dy=0,dz=0] run function tr:lobby/admin/interactions/interact/update