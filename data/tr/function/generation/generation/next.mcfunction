# execute if score #generation status matches 4..5 run function tr:generation/spawn_rooms/run
execute if score #generation status matches 3 run function tr:generation/duplicate/slice
execute if score #generation status matches 2 run function tr:generation/generation/clear_old
execute if score #generation status matches 1 if score #x tmp < #sectionX tmp run function tr:generation/generation/slice
execute if score #generation status matches 1 if score #x tmp >= #sectionX tmp run function tr:generation/generation/section

execute if score #generation status matches 0 run title @a actionbar [{"color":"gold","text":""}]
execute if score #generation status matches 1 run title @a actionbar [{"color":"gold","translate":"tr.title.generation.arena"}, " ", {"score":{"name": "#currentX", "objective": "tmp"}},"/",{"score":{"name": "#totalX", "objective": "tmp"}}]
execute if score #generation status matches 2 run title @a actionbar [{"color":"gold","translate":"tr.title.generation.cleanup"}, " ", {"score":{"name": "#currentX", "objective": "tmp"}},"/",{"score":{"name": "#maxX", "objective": "tmp"}}]
execute if score #generation status matches 3 run title @a actionbar [{"color":"gold","translate":"tr.title.generation.duplication"}]
execute if score #generation status matches 4..5 run title @a actionbar [{"color":"gold","translate":"tr.title.generation.starter_rooms"}]

# execute at @s run tp @a ~ 30 5 facing ~ 0 0

execute as @a[x=-2,y=200,z=-2,dx=4,dy=4,dz=4] run function tr:player/join
gamemode spectator @a[gamemode=!spectator]