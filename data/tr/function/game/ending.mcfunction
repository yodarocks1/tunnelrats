scoreboard players add #aftergame timer 1

execute as @a at @s if entity @s[y=130,dy=100] run tp @s @a[sort=random,gamemode=survival,limit=1]

scoreboard players operation #tmp tmp = #aftergame timer
scoreboard players operation #tmp tmp %= 50 const

execute if score #aftergame timer matches ..100 if score #tmp tmp matches 0 as @a[gamemode=!spectator] at @s run function tr:game/ending/firework

# 5s
execute if score #aftergame timer matches 100 run gamemode spectator @a[gamemode=!spectator]