scoreboard players set #admin.sign.interaction status 2

function tr:lobby/admin/interactions/menu/check/is_dirty

execute if score #admin.dirty status matches 0 run function tr:lobby/admin/interactions/menu/sign/setup
execute if score #admin.dirty status matches 0 run return 1

execute if score #admin.new.confirm timer matches ..0 run tellraw @p[tag=interactor] [ {"translate":"tr.text.admin.is_dirty", "color": "red" }, " ", {"translate":"tr.text.admin.confirm.new"}," ", {"translate":"tr.text.admin.timer","with":[{"translate":"tr.text.admin.confirm"}]}]
execute if score #admin.new.confirm timer matches ..0 run function tr:lobby/admin/interactions/menu/check/disable
execute if score #admin.new.confirm timer matches ..0 positioned ~ ~-1 ~ run function tr:lobby/admin/interactions/menu/check/confirm_add {type: "new"}
execute if score #admin.new.confirm timer matches ..0 run scoreboard players set #admin.new.confirm timer 60
execute if score #admin.new.confirm timer matches 60 run return 0

# tellraw @a [{"score": {"name": "#admin.new.confirm", "objective": "timer"}}]

scoreboard players set #admin.new.confirm timer -1
scoreboard players set #admin.dirty timer -1
kill @e[tag=admin.tmp.confirm]

execute positioned ~ ~1 ~ run function tr:lobby/admin/interactions/menu/sign/setup