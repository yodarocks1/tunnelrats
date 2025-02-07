execute as @e[type=text_display,tag=admin.block,tag=isActive,tag=!active] at @s align xyz run function tr:lobby/admin/interactions/enable/disable

tag @e[type=text_display,tag=admin.block,tag=active] remove active