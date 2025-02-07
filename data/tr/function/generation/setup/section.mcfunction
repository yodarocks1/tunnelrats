scoreboard players remove #z tmp 1
execute if block ~ ~ ~ air positioned ~ ~ ~-1 run function tr:generation/setup/section
execute if score #z tmp matches ..0 run return 0
data modify storage tr:tmp section set value {blocks:[]}


scoreboard players set #y tmp 12
# analyze
function tr:generation/setup/block

# check different dimensions
function tr:generation/setup/section_size

# copy value
data modify storage tr:tmp newSetup.sections append from storage tr:tmp section

# tally up total X
execute store result score #sectionX tmp run data get storage tr:tmp section.x
execute if score #sectionX tmp matches 0 store result score #sectionX tmp run data get storage tr:tmp newSetup.base.x
scoreboard players operation #totalX tmp += #sectionX tmp

# run again
execute positioned ~ ~ ~-1 run function tr:generation/setup/section