tag @e[tag=admin.menu,tag=!disabled_override] remove disabled
scoreboard players set #admin.dirty timer -1

kill @e[tag=admin.tmp.confirm]

execute as @e[tag=admin.menu,type=item_display,tag=!disabled] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players get @s status
execute as @e[tag=admin.menu,type=interaction,tag=!disabled] run data modify entity @s response set value 1b