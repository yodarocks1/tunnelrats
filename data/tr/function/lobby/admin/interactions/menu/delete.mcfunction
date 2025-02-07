execute if score #admin.delete.confirm timer matches ..0 run tellraw @p[tag=interactor] [{"translate":"tr.text.admin.confirm.delete", "color": "red", "with": [{"nbt":"arena.name", "storage": "tr:admin"}]}, " ", {"translate":"tr.text.admin.timer","with":[{"translate":"tr.text.admin.confirm"}]}]
execute if score #admin.delete.confirm timer matches ..0 run function tr:lobby/admin/interactions/menu/check/disable
execute if score #admin.delete.confirm timer matches ..0 positioned ~ ~-1 ~ run function tr:lobby/admin/interactions/menu/check/confirm_add {type: "delete"}
execute if score #admin.delete.confirm timer matches ..0 run scoreboard players set #admin.delete.confirm timer 60
execute if score #admin.delete.confirm timer matches 60 run return 0

tellraw @p[tag=interactor] [{"translate":"tr.text.admin.arena_deleted","color": "green", "with": [{"nbt":"arena.name", "storage": "tr:admin"}]}]
scoreboard players set #admin.dirty status 0
function tr:lobby/admin/interactions/menu/delete_map with storage tr:admin map

scoreboard players set #interaction tmp 0
scoreboard players set #admin.dirty status -1
function tr:lobby/admin/interactions/menu/next
scoreboard players set #admin.delete.confirm timer 0