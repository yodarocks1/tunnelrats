scoreboard players add #ad tmp 1

execute if score #ad tmp matches ..4 run return 0

scoreboard players set #ad tmp 0
execute as @a run function tr:lobby/ad/interact
