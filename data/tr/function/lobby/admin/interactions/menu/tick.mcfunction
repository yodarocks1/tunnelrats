execute if score #admin.dirty timer matches 0.. run scoreboard players remove #admin.dirty timer 1
execute if score #admin.dirty timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable

execute if score #admin.save.confirm timer matches 0.. run scoreboard players remove #admin.save.confirm timer 1
execute if score #admin.save.confirm timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable

execute if score #admin.new.confirm timer matches 0.. run scoreboard players remove #admin.new.confirm timer 1
execute if score #admin.new.confirm timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable

execute if score #admin.delete.confirm timer matches 0.. run scoreboard players remove #admin.delete.confirm timer 1
execute if score #admin.delete.confirm timer matches 0 run function tr:lobby/admin/interactions/menu/check/enable