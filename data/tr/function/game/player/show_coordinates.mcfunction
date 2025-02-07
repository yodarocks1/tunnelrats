execute store result score #x tmp run data get entity @s Pos[0]
execute store result score #y tmp run data get entity @s Pos[1]
execute store result score #z tmp run data get entity @s Pos[2]

title @s actionbar ["",{"text": "XYZ: ","color": "gold"},{"score":{"name": "#x","objective": "tmp"}}," ",{"score":{"name": "#y","objective": "tmp"}}," ",{"score":{"name": "#z","objective": "tmp"}}]