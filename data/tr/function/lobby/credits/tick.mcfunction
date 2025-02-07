execute as @a[scores={return=1..}] run function tr:lobby/credits/player/return
execute as @a at @s if entity @s[z=-42,dz=-300,y=130,dy=30] run function tr:lobby/credits/player/tick
execute as @a[tag=in_credits] at @s unless entity @s[z=-42,dz=-300,y=130,dy=30] run function tr:lobby/credits/player/leave