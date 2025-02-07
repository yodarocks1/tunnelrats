# returns 
# 0 if not dirty
# 1 if dirty and timer is active
# 2 if dirty and timer is not active, starts timer

execute if score #admin.dirty status matches 0 run function tr:lobby/admin/interactions/menu/check/dirty_doublecheck with storage tr:admin arena

execute if score #admin.dirty status matches 0 run return 0
execute if score #admin.dirty status matches 1.. if score #admin.dirty timer matches 1.. run return 1
scoreboard players set #admin.dirty timer 60
execute if score #admin.dirty status matches 1.. run return 2

scoreboard players set #admin.dirty status 0
return 0