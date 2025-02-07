# reset data
# data remove storage tr:tmp load
# which file am I supposed to load?
# data modify storage tr:tmp load.name set value ""
# data modify storage tr:tmp load.name set string block ~1 ~ ~1 front_text.messages[1] 1 -1
# execute store result score length tmp run data get storage tr:tmp load.name

# execute if score length tmp matches 0 run tellraw @p [{"translate": "tr.text.game.error.no_arena","color":"red"}]
# execute if score length tmp matches 0 run return 0

# execute store result score #r tmp run function tr:generation/load/check_existence with storage tr:tmp load
# execute if score #r tmp matches 0 run tellraw @p [{"translate": "tr.text.game.error.arena_not_found","color":"red", "with":[{"nbt":"load.name","storage":"tr:tmp"}]}]
# execute if score #r tmp matches 0 run return 0

scoreboard players set #loading tmp 1

# load data
function tr:generation/load/load
tellraw @p[tag=interactor] [{"translate": "tr.text.admin.arena_loaded","color":"green", "with":[{"nbt":"load.arena.name","storage":"tr:tmp"}]}]

scoreboard players set #loading tmp 0
function tr:lobby/admin/update_preview