# execute as the original interaction entity
setblock ~ ~ ~-1 air

kill @e[tag=admin.confirm]
kill @e[tag=admin.cancel]

function tr:lobby/admin/interactions/menu/check/enable

kill @e[type=marker,tag=admin.sign]