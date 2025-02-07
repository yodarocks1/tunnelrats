# display entities
execute if score #death.effect.resistance settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon,tag=!settings.overlay] item.components."minecraft:custom_model_data".floats[0] set value 281f
execute if score #death.effect.resistance settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon,tag=!settings.overlay] item.components."minecraft:custom_model_data".floats[0] set value 28f

execute if score #death.effect.resistance settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon.lvl] item.components."minecraft:custom_model_data".floats[0] set value 6f
execute if score #death.effect.resistance settings matches 1 if score #death.effect.resistance.strength settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon.lvl] item.components."minecraft:custom_model_data".floats[0] set value 1001f
execute if score #death.effect.resistance settings matches 1 if score #death.effect.resistance.strength settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon.lvl] item.components."minecraft:custom_model_data".floats[0] set value 1002f

execute if score #death.effect.resistance settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon.duration] item.components."minecraft:custom_model_data".floats[0] set value 6f
execute if score #death.effect.resistance settings matches 1 if score #death.effect.resistance.duration settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon.duration] item.components."minecraft:custom_model_data".floats[0] set value 1003f
execute if score #death.effect.resistance settings matches 1 if score #death.effect.resistance.duration settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon.duration] item.components."minecraft:custom_model_data".floats[0] set value 1004f
execute if score #death.effect.resistance settings matches 1 if score #death.effect.resistance.duration settings matches 2 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon.duration] item.components."minecraft:custom_model_data".floats[0] set value 1005f

# tellraw
scoreboard players set #d tmp 10
execute if score #death.effect.resistance.duration settings matches 1 run scoreboard players set #d tmp 20
execute if score #death.effect.resistance.duration settings matches 2 run scoreboard players set #d tmp 30

execute if score #death.effect.resistance settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.effects.resistance","with":[{"score":{"name": "#d","objective": "tmp"}}]}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}] 
execute if score #death.effect.resistance settings matches 1 if score #death.effect.resistance.strength settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.effects.resistance","with":[{"score":{"name": "#d","objective": "tmp"}}]}, " ", {"translate":"tr.text.setting.instruction.level", "color":"dark_green", "with":[{"text":"1"}]}]
execute if score #death.effect.resistance settings matches 1 if score #death.effect.resistance.strength settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.effects.resistance","with":[{"score":{"name": "#d","objective": "tmp"}}]}, " ", {"translate":"tr.text.setting.instruction.level", "color":"dark_green", "with":[{"text":"2"}]}]