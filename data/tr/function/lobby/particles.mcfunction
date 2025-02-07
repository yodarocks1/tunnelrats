# team particles
execute if score #team.color.1 settings matches 0 run particle minecraft:block{block_state:{Name:"red_concrete"}} 4 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.1 settings matches 1 run particle minecraft:block{block_state:{Name:"orange_concrete"}} 4 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.1 settings matches 2 run particle minecraft:block{block_state:{Name:"lime_concrete"}} 4 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.1 settings matches 3 run particle minecraft:block{block_state:{Name:"blue_concrete"}} 4 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.1 settings matches 4 run particle minecraft:block{block_state:{Name:"purple_concrete"}} 4 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.1 settings matches 5 run particle minecraft:block{block_state:{Name:"pink_concrete"}} 4 141.45 15.95 1.1 0 0 0 10

execute if score #team.color.2 settings matches 0 run particle minecraft:block{block_state:{Name:"red_concrete"}} -10 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.2 settings matches 1 run particle minecraft:block{block_state:{Name:"orange_concrete"}} -10 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.2 settings matches 2 run particle minecraft:block{block_state:{Name:"lime_concrete"}} -10 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.2 settings matches 3 run particle minecraft:block{block_state:{Name:"blue_concrete"}} -10 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.2 settings matches 4 run particle minecraft:block{block_state:{Name:"purple_concrete"}} -10 141.45 15.95 1.1 0 0 0 10
execute if score #team.color.2 settings matches 5 run particle minecraft:block{block_state:{Name:"pink_concrete"}} -10 141.45 15.95 1.1 0 0 0 10

# floaty particles
particle minecraft:white_ash -3 140 0 8 8 8 0 15
# scoreboard players add #particle.floaty timer 1
# execute if score #particle.floaty timer matches 3 run particle minecraft:spore_blossom_air -3 142 0 5 5 5 0 1
# execute if score #particle.floaty timer matches 6 run particle minecraft:spore_blossom_air -3 142 0 5 5 5 0 1
# execute if score #particle.floaty timer matches 6 run particle minecraft:falling_spore_blossom -3 144 0 2 2 2 0 1
# execute if score #particle.floaty timer matches 6.. run scoreboard players set #particle.floaty timer 0

# border particles
scoreboard players add #admin.barrier timer 1
execute if score #admin.barrier timer matches 40 as @e[tag=admin.barrier] run data merge entity @s {transformation:{translation:[-0.5f, -1.595f, 0.02f]}}
execute if score #admin.barrier timer matches 41.. as @e[tag=admin.barrier] run data merge entity @s {transformation:{translation:[-0.5f, -0.595f, 0.02f]},interpolation_duration:40, start_interpolation:0}
execute if score #admin.barrier timer matches 41.. run scoreboard players set #admin.barrier timer 0

