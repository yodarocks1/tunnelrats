# remove the old forceload
forceload remove all

# fill with bedrock
execute if score #baseBlock tmp matches 0 run fill ~ -50 -50 ~ 50 50 air
execute if score #baseBlock tmp matches 1 run fill ~ -50 -50 ~ 50 50 barrier
execute if score #baseBlock tmp matches 2 run fill ~ -50 -50 ~ 50 50 bedrock

# tellraw @a ["entity X: ", {"nbt":"Pos[0]","entity":"@s"}]

# duplicate slice
execute store result storage tr:gen position.fromX int 1 run scoreboard players get #currentX tmp
execute store result storage tr:gen position.toX int 1 run scoreboard players get #currentX tmp
function tr:generation/generation/forceload_section with storage tr:gen position

execute store result storage tr:gen dupeX int 1 run scoreboard players get #currentX tmp
function tr:generation/duplicate/clone_slice with storage tr:gen

# next slice
tp @s ~1 ~ ~
scoreboard players add #currentX tmp 1
execute if score #currentX tmp >= #maxX tmp run function tr:generation/spawn_rooms/start