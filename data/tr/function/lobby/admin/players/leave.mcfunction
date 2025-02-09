tag @s remove adminArea
effect clear @s
# TODO: prevent crown from being removed, issue #36
clear @s
gamemode adventure @s[gamemode=!adventure]

xp set @a 0 levels
xp set @a 0 points

# remove help block and items
setblock -26 138 10 air
kill @e[type=item,tag=admin.nokill,nbt={Item:{id:"minecraft:written_book"}}]