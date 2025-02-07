scoreboard players operation #team.trims settings += #interaction tmp
scoreboard players operation #team.trims settings %= 2 const

execute if score #team.trims settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 551f
execute if score #team.trims settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 55f

execute if score #team.trims settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.team.armortrim"}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #team.trims settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.team.armortrim"}, " ", {"translate":"tr.text.setting.instruction.enabled", "color":"dark_green"}]