execute if entity @s[tag=disabled] run return 0

execute if entity @s[tag=admin.arena.prev] run scoreboard players set #interaction tmp -1
execute if entity @s[tag=admin.arena.prev] run function tr:lobby/admin/interactions/menu/next
execute if entity @s[tag=admin.arena.next] run scoreboard players set #interaction tmp 1
execute if entity @s[tag=admin.arena.next] run function tr:lobby/admin/interactions/menu/next

execute if entity @s[tag=admin.import] run function tr:lobby/admin/interactions/menu/import
execute if entity @s[tag=admin.export] run function tr:lobby/admin/interactions/menu/export
execute if entity @s[tag=admin.help] run function tr:lobby/admin/interactions/menu/help

execute if entity @s[tag=admin.delete] run function tr:lobby/admin/interactions/menu/delete
execute if entity @s[tag=admin.rename] run function tr:lobby/admin/interactions/menu/rename
execute if entity @s[tag=admin.new] run function tr:lobby/admin/interactions/menu/new
execute if entity @s[tag=admin.save] run function tr:lobby/admin/interactions/menu/save
execute if entity @s[tag=admin.save_as] run function tr:lobby/admin/interactions/menu/save_as

execute if entity @s[tag=admin.confirm] run function tr:lobby/admin/interactions/menu/sign/confirm
execute if entity @s[tag=admin.cancel] run function tr:lobby/admin/interactions/menu/sign/cancel