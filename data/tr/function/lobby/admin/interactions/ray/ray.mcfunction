execute unless block ~ ~ ~ air unless block ~ ~ ~ light run function tr:lobby/admin/interactions/ray/hit
execute unless block ~ ~ ~ air unless block ~ ~ ~ light run return 1

scoreboard players remove #steps tmp 1
execute if score #steps tmp matches 1.. positioned ^ ^ ^.1 run function tr:lobby/admin/interactions/ray/ray

# particle bubble ~ ~ ~ 0 0 0 0 1 force