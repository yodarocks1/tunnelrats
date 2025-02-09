execute if data storage tr:admin arena.builtin run function tr:lobby/admin/interactions/menu/check/disable_builtin
execute if data storage tr:admin arena.downloaded run function tr:lobby/admin/interactions/menu/check/disable_downloaded
execute if data storage tr:admin arena.on run function tr:lobby/admin/interactions/menu/check/disable_has_callbacks
execute unless data storage tr:admin arena.reload_function run tag @e[tag=admin.reload] add disabled

execute as @e[tag=admin.menu,tag=disabled,type=item_display] run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 8f
execute as @e[tag=admin.menu,tag=disabled,type=interaction] run data modify entity @s response set value 0b
tag @e[tag=admin.menu,tag=disabled] add disabled_override
execute as @e[tag=admin.menu,tag=disabled_override,tag=hide_on_disable] at @s run tp ~ ~100 ~