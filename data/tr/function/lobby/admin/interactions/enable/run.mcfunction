execute if entity @s[tag=active] run return 1
tag @s add active
execute if entity @s[tag=isActive] run return 1

execute if entity @s[tag=admin.base] align xyz run function tr:lobby/admin/interactions/enable/base
execute if entity @s[tag=!admin.base,tag=admin.block] align xyz run function tr:lobby/admin/interactions/enable/block

tag @s add isActive