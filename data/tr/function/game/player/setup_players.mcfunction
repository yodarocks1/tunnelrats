# get the position to spread players to
execute store result score #tmp tmp run data get storage tr:gen template.totalX
execute store result storage tr:tmp setup.spreadX int 1 run scoreboard players remove #tmp tmp 5
gamemode adventure @a[team=team1]
gamemode adventure @a[team=team2]

function tr:game/player/spreadplayers with storage tr:tmp setup

tp @a[team=spectator] @a[limit=1,sort=random,team=!spectator]

scoreboard players operation #gameStart timer = #game.start.timer settings
scoreboard players operation #gameStart timer *= 20 const
scoreboard players add #gameStart timer 1

effect give @a regeneration 5 10 true
effect give @a saturation 5 10 true

scoreboard players operation @a[team=team1] color = #team.color.1 settings
scoreboard players operation @a[team=team2] color = #team.color.2 settings

scoreboard players set #game status 3