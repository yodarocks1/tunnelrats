scoreboard players operation #gr.announceadvancements settings += #interaction tmp
scoreboard players operation #gr.announceadvancements settings %= 2 const

execute if score #gr.announceadvancements settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 481f
execute if score #gr.announceadvancements settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 48f

execute if score #gr.announceadvancements settings matches 0 run gamerule announceAdvancements false
execute if score #gr.announceadvancements settings matches 1 run gamerule announceAdvancements true

execute if score #gr.announceadvancements settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.advancements"}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #gr.announceadvancements settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.advancements"}, " ", {"translate":"tr.text.setting.instruction.enabled", "color":"dark_green"}]