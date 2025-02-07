gamerule showDeathMessages false
# gamerule doImmediateRespawn true
execute if score @s tsd matches 1.. run scoreboard players remove @s stat.deaths.round 1
execute if score @s tsd matches 1.. run scoreboard players remove @s stat.deaths.total 1
execute if score @s tsd matches 1.. run kill @s
gamerule showDeathMessages true

# execute if score #gr.immediaterespawn settings matches 0 run gamerule doImmediateRespawn false
# execute if score #gr.immediaterespawn settings matches 1 run gamerule doImmediateRespawn true

title @s actionbar ""

scoreboard players set @s death 0
scoreboard players set @s deathTimer 0
tag @s add respawned

gamemode survival @s