execute if score #game status matches 0 run function tr:lobby/tick
execute if score #generation status matches 1.. as @e[type=marker,tag=tr.gen,limit=1] at @s run function tr:generation/generation/next
execute if score #game status matches 2.. run function tr:game/run

execute as @a[scores={leave=1..}] run function tr:player/join
execute as @a[tag=!joined] run function tr:player/join
