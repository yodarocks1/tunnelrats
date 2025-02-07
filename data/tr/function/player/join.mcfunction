tag @s add joined
scoreboard players set @s leave 0

trigger reset_settings set 0

# if a player returns after their game is still active, reset them
scoreboard players add @s activeGame 0
execute unless score #current activeGame = @s activeGame run function tr:player/reset
execute unless score #current activeGame = @s activeGame run return 1

# else, make sure they have the correct gamemode (because default gamemode on servers is weird)
gamemode survival @s
gamemode adventure @s[scores={deathTimer=1..}]
gamemode spectator @s[team=spectator]
execute if score #death.spectate_elim settings matches 1 run gamemode spectator @s[team=.dead]
execute if score #death.spectate_elim settings matches 0 run gamemode adventure @s[team=.dead]