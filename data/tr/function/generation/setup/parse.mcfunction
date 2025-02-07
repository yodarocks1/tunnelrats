# loads the currently built game setup into storage

# reset
data modify storage tr:tmp newSetup set value {base:{x:15,y:10,z:15},totalX:1,sections:[]}
scoreboard players set #totalX tmp 7

# get the base dimensions
# data modify storage tr:tmp input set string block ~1 ~ ~ front_text.messages[0] 1 -1
# execute store result storage tr:tmp newSetup.base.x int 1 run function util:string_to_int with storage tr:tmp
# data modify storage tr:tmp input set string block ~1 ~ ~ front_text.messages[1] 1 -1
# execute store result storage tr:tmp newSetup.base.y int 1 run function util:string_to_int with storage tr:tmp
# data modify storage tr:tmp input set string block ~1 ~ ~ front_text.messages[2] 1 -1
# execute store result storage tr:tmp newSetup.base.z int 1 run function util:string_to_int with storage tr:tmp
execute store result storage tr:tmp newSetup.base.x int 1 positioned ~1 ~ ~ align xyz run scoreboard players get @e[limit=1,type=text_display,tag=admin.base,dx=1,dy=0,dz=0] x
execute store result storage tr:tmp newSetup.base.y int 1 positioned ~1 ~ ~ align xyz run scoreboard players get @e[limit=1,type=text_display,tag=admin.base,dx=1,dy=0,dz=0] y
execute store result storage tr:tmp newSetup.base.z int 1 positioned ~1 ~ ~ align xyz run scoreboard players get @e[limit=1,type=text_display,tag=admin.base,dx=1,dy=0,dz=0] z

# limit base dimensions to maximums and minimums (1..99)
execute store result score #tmp tmp run data get storage tr:tmp newSetup.base.x 1
execute if score #tmp tmp matches ..0 run data modify storage tr:tmp newSetup.base.x set value 1
execute if score #tmp tmp matches 100.. run data modify storage tr:tmp newSetup.base.x set value 99
execute store result score #tmp tmp run data get storage tr:tmp newSetup.base.y 1
execute if score #tmp tmp matches ..0 run data modify storage tr:tmp newSetup.base.y set value 1
execute if score #tmp tmp matches 100.. run data modify storage tr:tmp newSetup.base.y set value 99
execute store result score #tmp tmp run data get storage tr:tmp newSetup.base.z 1
execute if score #tmp tmp matches ..0 run data modify storage tr:tmp newSetup.base.z set value 1
execute if score #tmp tmp matches 100.. run data modify storage tr:tmp newSetup.base.z set value 99

# start the process of scanning blocks
scoreboard players set #z tmp 20
execute positioned ~ ~ ~ run function tr:generation/setup/section

# save the total size
execute store result storage tr:tmp newSetup.totalX int 1 run scoreboard players get #totalX tmp
