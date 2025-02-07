tag @s add onlyAdmin

execute as @a[x=-32,y=138,z=-10,dx=13,dy=12,dz=20,tag=!onlyAdmin] at @s run tp @s -15 ~ ~
execute as @a[x=-32,y=138,z=-10,dx=13,dy=12,dz=20,tag=!onlyAdmin] run function tr:lobby/admin/players/leave

tag @s remove onlyAdmin