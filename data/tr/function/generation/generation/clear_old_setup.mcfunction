tp @s ~1 0 0

# take the larger one of the current and previous maxX
scoreboard players set #maxX tmp 0
execute store result score #maxX tmp run data get storage tr:gen template.totalX
scoreboard players operation #tmp tmp = #maxX tmp
scoreboard players operation #maxX tmp > #previousMaxX tmp
scoreboard players operation #previousMaxX tmp = #tmp tmp

data modify storage tr:gen position.fromZ set value -50
data modify storage tr:gen position.toZ set value 50

execute if score #currentX tmp < #maxX tmp run scoreboard players set #generation status 2
execute if score #currentX tmp >= #maxX tmp run function tr:generation/spawn_rooms/start