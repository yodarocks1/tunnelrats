effect give @a[tag=!adminArea] weakness 1 5 true
effect give @a saturation 1 5 true
effect give @a regeneration 1 1 true
effect give @a resistance 1 5 true

execute as @a[x=-2,y=200,z=-2,dx=4,dy=4,dz=4] run function tr:player/join

function tr:lobby/teams/tick
function tr:lobby/admin/tick
function tr:lobby/particles

function tr:lobby/credits/tick

execute as @a[tag=!admin] at @s run function tr:lobby/escape

execute as @a[scores={reset_settings=1..}] run function tr:lobby/settings/reset