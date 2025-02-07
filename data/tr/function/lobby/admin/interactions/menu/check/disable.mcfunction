tag @e[tag=admin.menu] add disabled
# tag @s remove disabled
execute at @s run tag @e[type=item_display,limit=1,sort=nearest] remove disabled
execute as @e[tag=admin.menu,tag=disabled,type=item_display] run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 8f
execute as @e[tag=admin.menu,tag=disabled,type=interaction] run data modify entity @s response set value 0b