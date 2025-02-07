scoreboard players operation #effect.speed settings += #interaction tmp
scoreboard players operation #effect.speed settings %= 3 const

execute if score #effect.speed settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 192f
execute if score #effect.speed settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 191f
execute if score #effect.speed settings matches 2 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 19f

execute if score #effect.speed settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.effects.speed"}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #effect.speed settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.effects.speed"}, " ", {"translate":"tr.text.setting.instruction.level", "color":"dark_green", "with": [{"text":"1"}]}]
execute if score #effect.speed settings matches 2 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.effects.speed"}, " ", {"translate":"tr.text.setting.instruction.level", "color":"dark_green", "with": [{"text":"2"}]}]