# chooses which block to set

# TODO switch this back to the function once https://bugs.mojang.com/browse/MC-264595 is fixed.
# execute store result score #chance tmp run function util:random_p
execute store result score #chance tmp run random value 0..10000

execute if score #choices tmp matches 2.. run scoreboard players operation #chance tmp -= #blockChance0 tmp
execute if score #choices tmp matches 2.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[1]
execute if score #choices tmp matches 2.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 3.. run scoreboard players operation #chance tmp -= #blockChance1 tmp
execute if score #choices tmp matches 3.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[2]
execute if score #choices tmp matches 3.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 4.. run scoreboard players operation #chance tmp -= #blockChance2 tmp
execute if score #choices tmp matches 4.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[3]
execute if score #choices tmp matches 4.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 5.. run scoreboard players operation #chance tmp -= #blockChance3 tmp
execute if score #choices tmp matches 5.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[4]
execute if score #choices tmp matches 5.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 6.. run scoreboard players operation #chance tmp -= #blockChance4 tmp
execute if score #choices tmp matches 6.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[5]
execute if score #choices tmp matches 6.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 7.. run scoreboard players operation #chance tmp -= #blockChance5 tmp
execute if score #choices tmp matches 7.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[6]
execute if score #choices tmp matches 7.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 8.. run scoreboard players operation #chance tmp -= #blockChance6 tmp
execute if score #choices tmp matches 8.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[7]
execute if score #choices tmp matches 8.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 9.. run scoreboard players operation #chance tmp -= #blockChance7 tmp
execute if score #choices tmp matches 9.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[8]
execute if score #choices tmp matches 9.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 10.. run scoreboard players operation #chance tmp -= #blockChance8 tmp
execute if score #choices tmp matches 10.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[9]
execute if score #choices tmp matches 10.. if score #chance tmp matches ..0 run return 0

execute if score #choices tmp matches 11.. run scoreboard players operation #chance tmp -= #blockChance9 tmp
execute if score #choices tmp matches 11.. if score #chance tmp matches ..0 run function tr:generation/generation/set_block with storage tr:gen section.blocks[10]
execute if score #choices tmp matches 11.. if score #chance tmp matches ..0 run return 0


function tr:generation/generation/set_block with storage tr:gen section.blocks[0]