# Mark for flipping
function tr:generation/flip_marking with storage tr:gen template

# Arena ready callback
function tr:game/callbacks/ready/arena

scoreboard players set #generation status 0
kill @s

gamerule spectatorsGenerateChunks false
gamerule doTileDrops true

execute if score #game status matches 1 run scoreboard players set #game status 2