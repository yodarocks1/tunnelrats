tag @e[tag=admin.delete] add disabled
tag @e[tag=admin.rename] add disabled
tag @e[tag=admin.save] add disabled
execute as @e[tag=admin.menu,tag=disabled,type=item_display] run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 8f
execute as @e[tag=admin.menu,tag=disabled,type=interaction] run data modify entity @s response set value 0b
tag @e[tag=admin.menu,tag=disabled] add disabled_override
# say disable builtin