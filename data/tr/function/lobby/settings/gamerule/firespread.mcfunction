scoreboard players operation #gr.firespread settings += #interaction tmp
scoreboard players operation #gr.firespread settings %= 2 const

execute if score #gr.firespread settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 461f
execute if score #gr.firespread settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 46f

execute if score #gr.firespread settings matches 0 run gamerule doFireTick false
execute if score #gr.firespread settings matches 1 run gamerule doFireTick true

execute if score #gr.firespread settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.fire_spread"}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #gr.firespread settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.fire_spread"}, " ", {"translate":"tr.text.setting.instruction.enabled", "color":"dark_green"}]