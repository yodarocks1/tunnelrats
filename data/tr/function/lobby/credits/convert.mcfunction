# only run manually if you know what you're doing!

execute as @e[type=armor_stand] at @s if entity @e[z=-42,dz=-1000] run data merge entity @s {DisabledSlots:4144959, Invulnerable: 1b, Marker:1b}

execute as @e[type=armor_stand, nbt={CustomNameVisible:1b}] at @s positioned ~ ~2.25 ~ run summon text_display ~ ~ ~ {billboard: "center",Tags:["credits.name"]}
execute as @e[type=armor_stand, nbt={CustomNameVisible:1b}] at @s positioned ~ ~2.25 ~ as @e[type=text_display,limit=1,sort=nearest] run data modify entity @s text set from entity @e[type=armor_stand,limit=1,sort=nearest] CustomName
execute as @e[type=armor_stand, nbt={CustomNameVisible:1b}] run data merge entity @s {CustomNameVisible: 0b, Marker: 0b}