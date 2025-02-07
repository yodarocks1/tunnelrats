# remove failed generation in case of emergency 
kill @e[type=marker,tag=tr.gen]

# end game
tp @a -9 136 0 -90 -2.7
spawnpoint @a 0 -64 0
gamemode adventure @a 
scoreboard players set #game status 0
scoreboard players add #current activeGame 1

team empty .dead
team empty spectator
team empty team1
team empty team2

effect clear @a

clear @a

datapack disable "file/netherite_recipe"

xp set @a 0 levels
xp set @a 0 points

# open howtoplay area
fill -5 140 -17 -1 138 -17 air

# winner crown (etc)
execute as @a if score @s color = #winningTeam tmp run function tr:game/player/winner

# fireworks!
execute positioned -3 137 0 run summon firework_rocket ~ ~ ~ {LifeTime:20,Tags:["end_firework"]}
execute positioned -3 137 0 run summon firework_rocket ~ ~ ~ {LifeTime:40,Tags:["end_firework"]}
execute positioned -3 137 0 run summon firework_rocket ~ ~ ~ {LifeTime:60,Tags:["end_firework"]}
execute positioned -3 137 0 run summon firework_rocket ~ ~ ~ {LifeTime:80,Tags:["end_firework"]}
execute positioned -3 137 0 run summon firework_rocket ~ ~ ~ {LifeTime:100,Tags:["end_firework"]}
execute as @e[tag=end_firework] run function tr:game/ending/multi_firework

spreadplayers -3 0 1 8 under 140 false @e[tag=end_firework]

# start stats
schedule function tr:game/ending/stats/kills 1s replace
schedule function tr:game/ending/stats/display/update_all 5s replace