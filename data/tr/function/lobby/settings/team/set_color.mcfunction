# team color setter.
# expects "color" as the team/text color, "color2" as the wool/banner color and "team" (number 1/2) as inputs

# team color
$team modify team$(team) color $(color)

# wall banner
$setblock ~-1 ~2 ~ $(color2)_wall_banner[facing=west]

# set room colors
$scoreboard players set #tmp tmp $(team)
$execute if score #tmp tmp matches 1 run fill 1 137 14 7 146 15 $(color2)_concrete replace #tr:concrete
$execute if score #tmp tmp matches 2 run fill -13 137 14 -7 146 15 $(color2)_concrete replace #tr:concrete

# set display colors
$execute as @e[type=item_display] if data entity @s item.components."minecraft:custom_data"."tr:custom_model_color" run function tr:data_update/custom_model_color {item_path:"item",color:"$(colorList)",team:$(team)}

# add to storage
$data modify storage tr:settings teams.team$(team).color set value "$(color2)"
$data modify storage tr:settings teams.team$(team).colorText set value "$(color)"
$data modify storage tr:settings teams.team$(team).colorList set value "$(colorList)"