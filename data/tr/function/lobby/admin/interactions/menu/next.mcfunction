execute store result score #r tmp run function tr:lobby/admin/interactions/menu/check/is_dirty
execute if score #r tmp matches 2 run tellraw @p[tag=interactor] [{"translate":"tr.text.admin.confirm.load", "color": "red"}, " ", {"translate":"tr.text.admin.is_dirty"}, " ", {"translate":"tr.text.admin.timer","with":[{"translate":"tr.text.admin.confirm"}]}]
execute if score #r tmp matches 2 run function tr:lobby/admin/interactions/menu/check/disable
execute if score #r tmp matches 2 if entity @s[tag=admin.arena.next] positioned ~-1 ~ ~ run function tr:lobby/admin/interactions/menu/check/confirm_add {type:"arena.next"}
execute if score #r tmp matches 2 if entity @s[tag=admin.arena.prev] positioned ~1 ~ ~ run function tr:lobby/admin/interactions/menu/check/confirm_add {type:"arena.prev"}
execute if score #r tmp matches 2 run return 0

function tr:lobby/admin/interactions/menu/check/enable_all
scoreboard players set #admin.dirty status 0

scoreboard players operation #admin.map.selection status += #interaction tmp
execute store result score #total tmp run data get storage tr:settings arenas
execute store result storage tr:admin map.id int 1 run scoreboard players operation #admin.map.selection status %= #total tmp
function tr:lobby/admin/interactions/menu/next_map with storage tr:admin map

execute if data storage tr:admin arena.builtin as @e[type=text_display,tag=admin.menu,tag=admin.arena] run data modify entity @s text set value '{"nbt":"arena.name","storage":"tr:admin","color":"green"}'
execute unless data storage tr:admin arena.builtin as @e[type=text_display,tag=admin.menu,tag=admin.arena] run data modify entity @s text set value '{"nbt":"arena.name","storage":"tr:admin","color":"yellow"}'

data modify storage tr:tmp load.arena set from storage tr:admin arena
execute positioned -32 138 9 run function tr:generation/load/start

# copy for dirty doublecheck
clone -32 138 -9 -32 149 9 -32 152 -9

execute if data storage tr:admin arena.builtin run function tr:lobby/admin/interactions/menu/check/disable_builtin