# remove the old forceload
forceload remove all

# get next section loaded
execute unless data storage tr:gen template.sections[0] run function tr:generation/generation/clear_old_setup
execute unless data storage tr:gen template.sections[0] run return 0
data modify storage tr:gen section set from storage tr:gen template.sections[-1]
data remove storage tr:gen template.sections[-1]

# get generation max values
execute store result score #sectionX tmp run data get storage tr:gen section.x
execute if score #sectionX tmp matches ..0 run scoreboard players operation #sectionX tmp = #globalX tmp
execute store result score #sectionY tmp run data get storage tr:gen section.y
execute if score #sectionY tmp matches ..0 run scoreboard players operation #sectionY tmp = #globalY tmp
execute store result score #sectionZ tmp run data get storage tr:gen section.z
execute if score #sectionZ tmp matches ..0 run scoreboard players operation #sectionZ tmp = #globalZ tmp

execute store result score #choices tmp run data get storage tr:gen section.blocks

# set block chances
scoreboard players set #blockChance0 tmp 0
scoreboard players set #blockChance1 tmp 0
scoreboard players set #blockChance2 tmp 0
scoreboard players set #blockChance3 tmp 0
scoreboard players set #blockChance4 tmp 0
scoreboard players set #blockChance5 tmp 0
scoreboard players set #blockChance6 tmp 0
scoreboard players set #blockChance7 tmp 0
scoreboard players set #blockChance8 tmp 0
scoreboard players set #blockChance9 tmp 0

execute store result score #blockChance0 tmp run data get storage tr:gen section.blocks[1].p 100
execute store result score #blockChance1 tmp run data get storage tr:gen section.blocks[2].p 100
execute store result score #blockChance2 tmp run data get storage tr:gen section.blocks[3].p 100
execute store result score #blockChance3 tmp run data get storage tr:gen section.blocks[4].p 100
execute store result score #blockChance4 tmp run data get storage tr:gen section.blocks[5].p 100
execute store result score #blockChance5 tmp run data get storage tr:gen section.blocks[6].p 100
execute store result score #blockChance6 tmp run data get storage tr:gen section.blocks[7].p 100
execute store result score #blockChance7 tmp run data get storage tr:gen section.blocks[8].p 100
execute store result score #blockChance8 tmp run data get storage tr:gen section.blocks[9].p 100
execute store result score #blockChance9 tmp run data get storage tr:gen section.blocks[10].p 100

# set up gen for next section
scoreboard players set #x tmp 0
scoreboard players set #y tmp 0
scoreboard players set #z tmp 0

# move marker to center slices on each other
scoreboard players operation #yPos tmp = #sectionY tmp
scoreboard players operation #yPos tmp /= 2 const
scoreboard players operation #yPos tmp *= -10 const
scoreboard players add #yPos tmp 5

scoreboard players operation #zPos tmp = #sectionZ tmp
scoreboard players operation #zPos tmp /= 2 const
scoreboard players operation #zPos tmp *= -10 const
scoreboard players add #zPos tmp 5

execute store result entity @s Pos[1] double 0.1 run scoreboard players get #yPos tmp
execute store result entity @s Pos[2] double 0.1 run scoreboard players get #zPos tmp

# load the areas of the next section
execute store result score #xPos tmp run data get entity @s Pos[0]
execute store result storage tr:gen position.fromX int 1 run scoreboard players get #xPos tmp
scoreboard players operation #xPos tmp += #sectionX tmp
execute store result storage tr:gen position.toX int 1 run scoreboard players get #xPos tmp

scoreboard players operation #zPos tmp /= 10 const
execute store result storage tr:gen position.fromZ int 1 run scoreboard players get #zPos tmp
scoreboard players operation #zPos tmp *= -1 const
execute store result storage tr:gen position.toZ int 1 run scoreboard players get #zPos tmp

function tr:generation/generation/forceload_section with storage tr:gen position

# run generation
execute at @s run function tr:generation/generation/slice