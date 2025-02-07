# things that need to happen every time
clear @s
team leave @s
effect clear @s
scoreboard players set @s color -1

xp set @s 0 levels
xp set @s 0 points

# reset respawn timer
scoreboard players set @s death 0 
scoreboard players set @s deathTimer 0 

# no game is ongoing
execute if score #game status matches 0 run function tr:lobby/player_join
execute if score #game status matches 0 run return 1

# game is ongoing
gamemode spectator @s
tp @s @p[gamemode=!spectator]
team join spectator @s