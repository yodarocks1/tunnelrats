# generates one slice of the current section (y, z)

scoreboard players set #z tmp 0
scoreboard players add #x tmp 1

# fill with bedrock
execute if score #baseBlock tmp matches 0 run fill ~ -50 -50 ~ 50 50 air
execute if score #baseBlock tmp matches 1 run fill ~ -50 -50 ~ 50 50 barrier
execute if score #baseBlock tmp matches 2 run fill ~ -50 -50 ~ 50 50 bedrock

# remove leftover entities
execute positioned ~ -50 -50 run tp @e[type=!player,dx=1,dy=100,dz=100] ~ -64 ~
execute positioned ~ -64 ~ run kill @e[type=!player,distance=..10]

# tellraw @a ["entity X: ", {"nbt":"Pos[0]","entity":"@s"}]
# replace with generated thing
function tr:generation/generation/column

# duplicate slice
execute store result storage tr:gen dupeX int 1 run scoreboard players get #currentX tmp
function tr:generation/duplicate/clone_slice with storage tr:gen

# biome
fillbiome ~ -50 -50 ~ 50 50 forest replace the_void

# move over
tp @s ~1 ~ ~
scoreboard players add #currentX tmp 1