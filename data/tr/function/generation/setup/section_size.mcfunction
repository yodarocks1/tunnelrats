execute store result storage tr:tmp section.x int 1 positioned ~1 ~ ~ align xyz run scoreboard players get @e[limit=1,type=text_display,tag=admin.base,dx=1,dy=0,dz=0] x
execute store result storage tr:tmp section.y int 1 positioned ~1 ~ ~ align xyz run scoreboard players get @e[limit=1,type=text_display,tag=admin.base,dx=1,dy=0,dz=0] y
execute store result storage tr:tmp section.z int 1 positioned ~1 ~ ~ align xyz run scoreboard players get @e[limit=1,type=text_display,tag=admin.base,dx=1,dy=0,dz=0] z

# limit base dimensions to maximums (0..99)
execute store result score #tmp tmp run data get storage tr:tmp section.x 1
execute if score #tmp tmp matches 100.. run data modify storage tr:tmp section.x set value 99
execute if score #tmp tmp matches ..0 run data modify storage tr:tmp section.x set value 1
execute store result score #tmp tmp run data get storage tr:tmp section.y 1
execute if score #tmp tmp matches 100.. run data modify storage tr:tmp section.y set value 99
execute if score #tmp tmp matches ..0 run data modify storage tr:tmp section.y set value 1
execute store result score #tmp tmp run data get storage tr:tmp section.z 1
execute if score #tmp tmp matches 100.. run data modify storage tr:tmp section.z set value 99
execute if score #tmp tmp matches ..0 run data modify storage tr:tmp section.z set value 1