# check if the arena is downloaded
execute unless data storage tr:admin arena.downloaded run tellraw @p[tag=interactor] [{"translate":"tr.text.admin.reload.not_downloaded","color": "red", "with": [{"nbt":"arena.name", "storage": "tr:admin"}]}]
execute unless data storage tr:admin arena.downloaded run return 1

# check if the arena has a reload callback
execute unless data storage tr:admin arena.reload_function run tellraw @p[tag=interactor] [{"translate":"tr.text.admin.reload.not_defined","color": "red", "with": [{"nbt":"arena.name", "storage": "tr:admin"}]}]
execute unless data storage tr:admin arena.reload_function run return 1

# reload & tell
execute store result storage tr:tmp arena_version.result byte 1 \
        store success storage tr:tmp arena_version.success byte 1 \
        run function tr:data_update/reload_datapack with storage tr:admin arena
function tr:lobby/admin/interactions/menu/reload_check_new with storage tr:tmp arena_version

data modify storage tr:tmp load.arena set from storage tr:admin arena
execute positioned -32 138 9 run function tr:generation/load/start

scoreboard players set #admin.dirty status 0
function tr:lobby/admin/interactions/menu/check/enable

tellraw @p[tag=interactor] [{"translate":"tr.text.admin.arena_reloaded","color": "gray", "with": [{"nbt":"arena.name", "storage": "tr:admin"}]}]

# disable invalid menu items
function tr:lobby/admin/interactions/menu/check/disable_invalid

# disable editing if saving is disabled
function tr:lobby/admin/interactions/menu/check/disable_editing