# generates one column of the current slice (z)

scoreboard players set #y tmp 0
scoreboard players add #z tmp 1
function tr:generation/generation/block
execute if score #z tmp < #sectionZ tmp positioned ~ ~ ~1 run function tr:generation/generation/column