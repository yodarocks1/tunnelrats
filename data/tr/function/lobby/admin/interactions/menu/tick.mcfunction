execute if score #admin.dirty timer matches 0.. run scoreboard players remove #admin.dirty timer 1
execute if score #admin.dirty timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable

execute if score #admin.save.confirm timer matches 0.. run scoreboard players remove #admin.save.confirm timer 1
execute if score #admin.save.confirm timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable

execute if score #admin.new.confirm timer matches 0.. run scoreboard players remove #admin.new.confirm timer 1
execute if score #admin.new.confirm timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable

execute if score #admin.delete.confirm timer matches 0.. run scoreboard players remove #admin.delete.confirm timer 1
execute if score #admin.delete.confirm timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable

tag @e[type=item,tag=!admin.nokill,nbt={Item:{id:"minecraft:written_book"}},x=-26,y=138,z=10,dx=1,dy=1,dz=1] add admin.nokill.setup
tag @e[tag=admin.nokill.setup] add admin.nokill
#execute as @e[tag=admin.nokill.setup] run data modify entity @s Age set value 5900s
execute as @e[tag=admin.nokill.setup] run data merge entity @s {NoGravity:true,Motion:[0f,0f,0f],Age:5500s}
execute as @e[tag=admin.nokill.setup] at @s run tp ~ ~-0.3 ~
tag @e[tag=admin.nokill.setup] remove admin.nokill.setup
execute as @e[type=item,tag=admin.nokill,nbt={Age:5600s}] run data modify entity @s NoGravity set value false
execute as @e[type=item,tag=admin.nokill,nbt={Age:5600s}] run tag @s add admin.nokill.old
execute as @e[type=item,tag=admin.nokill.old,nbt={OnGround:true}] run kill @s