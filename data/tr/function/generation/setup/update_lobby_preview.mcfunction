data modify storage tr:tmp name set from storage tr:tmp newSetup.name
execute store success score #r tmp run data modify storage tr:tmp name set from storage tr:settings arena.name

data modify storage tr:tmp preview set from storage tr:tmp newSetup
execute if score #r tmp matches 0 positioned -3 138 0 run function tr:lobby/preview/create {x:-3, y:137.2, z:0}
