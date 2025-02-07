function tr:lobby/admin/interactions/check/summon_base

execute store result score @s x run data get storage tr:tmp load.slice.x 1
execute store result score @s y run data get storage tr:tmp load.slice.y 1
execute store result score @s z run data get storage tr:tmp load.slice.z 1
function tr:lobby/admin/interactions/update/base