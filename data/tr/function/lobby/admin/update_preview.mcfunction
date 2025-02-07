execute positioned -32 139 9 run function tr:generation/setup/parse
data modify storage tr:tmp preview set from storage tr:tmp newSetup

execute positioned -24 138 0 run function tr:lobby/preview/create {x:-24, y:138.2, z:0}