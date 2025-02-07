
# check which arena to load
data modify storage tr:tmp load.name set from storage tr:settings arena.name
execute store result score length tmp run data get storage tr:tmp load.name

execute if score length tmp matches 0 run tellraw @p [{"translate": "tr.text.game.error.no_arena","color":"red"}]
execute if score length tmp matches 0 run return 0

execute store result score #r tmp run function tr:generation/generation/check_existence with storage tr:tmp load
execute if score #r tmp matches 0 run tellraw @p [{"translate": "tr.text.game.error.arena_not_found","color":"red", "with":[{"nbt":"load.name","storage":"tr:tmp"}]}]
execute if score #r tmp matches 0 run return 0

# check if arena is empty
execute store result score #r tmp run data get storage tr:gen template.sections
execute if score #r tmp matches 0 run tellraw @p [{"translate": "tr.text.game.error.arena_empty","color":"red", "with":[{"nbt":"load.name","storage":"tr:tmp"}]}]
execute if score #r tmp matches 0 run return 0

return 1