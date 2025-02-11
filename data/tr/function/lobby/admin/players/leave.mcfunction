tag @s remove adminArea
effect clear @s
execute if items entity @s container.* minecraft:stick[custom_model_data={floats:[7]}] run tag @s add admin.winner
clear @s
execute if entity @s[tag=admin.winner] run function tr:game/player/winner
tag @a[tag=admin.winner] remove admin.winner
gamemode adventure @s[gamemode=!adventure]

xp set @a 0 levels
xp set @a 0 points

# remove help block and items
setblock -26 138 10 air
kill @e[type=item,tag=admin.nokill,nbt={Item:{id:"minecraft:written_book"}}]