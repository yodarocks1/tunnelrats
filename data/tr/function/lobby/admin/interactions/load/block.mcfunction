function tr:lobby/admin/interactions/check/summon_block

execute store result score @s p run data get storage tr:tmp load.block.p 100
function tr:lobby/admin/interactions/update/block