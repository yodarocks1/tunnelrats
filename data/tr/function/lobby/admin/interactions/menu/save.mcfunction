# say save
function tr:lobby/admin/interactions/menu/check/is_dirty
execute if score #admin.dirty status matches 0 run tellraw @p[tag=interactor] [{"translate":"tr.text.admin.nothing_to_save","color": "gray"}]
execute if score #admin.dirty status matches 0 run return 1

execute if score #admin.save.confirm timer matches ..0 run tellraw @p[tag=interactor] [{"translate":"tr.text.admin.confirm.save", "color": "red", "with": [{"nbt":"arena.name", "storage": "tr:admin"}]}, " ", {"translate":"tr.text.admin.timer","with":[{"translate":"tr.text.admin.confirm"}]}]
execute if score #admin.save.confirm timer matches ..0 run function tr:lobby/admin/interactions/menu/check/disable
execute if score #admin.save.confirm timer matches ..0 positioned ~ ~-1 ~ run function tr:lobby/admin/interactions/menu/check/confirm_add {type: "save"}
execute if score #admin.save.confirm timer matches ..0 run scoreboard players set #admin.save.confirm timer 60
execute if score #admin.save.confirm timer matches 60 run return 0

data modify storage tr:tmp new.name set from storage tr:admin arena.name
execute positioned -32 139 9 run function tr:generation/setup/parse_and_save

scoreboard players set #admin.dirty status 0
function tr:lobby/admin/interactions/menu/check/enable

tellraw @p[tag=interactor] [{"translate":"tr.text.admin.arena_saved","color": "green", "with": [{"nbt":"arena.name", "storage": "tr:admin"}]}]