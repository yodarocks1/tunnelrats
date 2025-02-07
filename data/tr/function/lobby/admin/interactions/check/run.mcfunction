# check for new ones
scoreboard players set #z tmp 19
execute if entity @a[tag=adminArea] positioned -32 139 9 run function tr:lobby/admin/interactions/check/row

# remove the ones in air
execute as @e[type=text_display,tag=admin.block] at @s if block ~-1 ~ ~ air run scoreboard players set #admin.dirty status 1
execute as @e[type=text_display,tag=admin.block] at @s if block ~-1 ~ ~ air run function tr:lobby/admin/update_preview
execute as @e[type=text_display,tag=admin.block] at @s if block ~-1 ~ ~ air align xyz run kill @e[type=#tr:admin,dx=1,dy=0,dz=0]