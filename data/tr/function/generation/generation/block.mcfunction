# generates one block of the current column

function tr:generation/generation/choose_block
scoreboard players add #y tmp 1
execute if score #y tmp < #sectionY tmp positioned ~ ~1 ~ run function tr:generation/generation/block