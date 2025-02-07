data modify storage tr:admin edit.name set string block ~ ~ ~-1 front_text.messages[0] 1 -1

execute store result score #length tmp run data get storage tr:admin edit.name
execute if score #length tmp matches 0 run tellraw @p[tag=interactor] [{"color":"red", "translate":"tr.text.admin.name_empty", "with": [{"nbt":"edit.name", "storage": "tr:admin"}]}]
execute if score #length tmp matches 0 run return 0

execute store result score #r tmp run function tr:lobby/admin/interactions/menu/sign/check/exists with storage tr:admin edit
execute if score #r tmp matches 1 run tellraw @p[tag=interactor] [{"color":"red", "translate":"tr.text.admin.arena_exists", "with": [{"nbt":"edit.name", "storage": "tr:admin"}]}]
execute if score #r tmp matches 1 run return 0

data modify storage tr:admin edit.old set from storage tr:admin arena.name
function tr:lobby/admin/interactions/menu/sign/rename_confirm with storage tr:admin edit
tellraw @p[tag=interactor] [{"color":"green", "translate":"tr.text.admin.arena_renamed", "with": [{"nbt":"edit.name", "storage": "tr:admin"}]}]

return 1