# effects
execute if score #effect.haste settings matches 1 run effect give @a haste infinite 0 true
execute if score #effect.haste settings matches 2 run effect give @a haste infinite 1 true
execute if score #effect.night_vision settings matches 1 run effect give @a night_vision infinite 0 true

effect give @a[team=spectator] night_vision infinite 0 true
effect give @a[team=.dead] weakness infinite 4 true
effect give @a[team=.dead] resistance infinite 4 true

execute if score #effect.speed settings matches 1 run effect give @a speed infinite 0 true
execute if score #effect.speed settings matches 2 run effect give @a speed infinite 1 true

# coordinates
execute if score #coordinates settings matches 1 as @a at @s run function tr:game/player/show_coordinates

# check for game over
execute unless entity @a[team=team1] unless entity @a[team=team2] run function tr:game/teams/tie
execute if entity @a[team=team1] unless entity @a[team=team2] run function tr:game/teams/win_1 with storage tr:settings teams.team1
execute unless entity @a[team=team1] if entity @a[team=team2] run function tr:game/teams/win_2 with storage tr:settings teams.team2

# check for players that died and respawned at the worldspawn
execute as @a[x=-2,y=200,z=-2,dx=4,dy=2,dz=4] run function tr:game/player/eliminated

# player respawn
execute as @a[scores={death=1}] run function tr:game/player/death
scoreboard players set @a[scores={death=0}] deathTimer 0
execute as @e[tag=respawned,type=player] run function tr:game/player/respawn_effects

# spectators going too high or low
execute as @a[gamemode=spectator] at @s if entity @s[y=125,dy=100] run tp @s @a[sort=random,gamemode=survival,limit=1]
execute as @a[gamemode=spectator] at @s if entity @s[y=-80,dy=20] run tp @s @a[sort=random,gamemode=survival,limit=1]

# grace period timer
function tr:game/grace/run

# anti nether portal
execute as @a at @s if block ~ ~ ~ nether_portal run setblock ~ ~ ~ air