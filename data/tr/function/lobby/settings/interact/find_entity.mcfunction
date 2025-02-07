tag @s add interactor
$execute if score #interaction tmp matches 1 as @e[type=interaction,distance=..7,nbt={interaction:{player:$(UUID)}}] at @s run function tr:lobby/settings/interact/found_entity
$execute if score #interaction tmp matches -1 as @e[type=interaction,distance=..7,nbt={attack:{player:$(UUID)}}] at @s run function tr:lobby/settings/interact/found_entity
tag @s remove interactor