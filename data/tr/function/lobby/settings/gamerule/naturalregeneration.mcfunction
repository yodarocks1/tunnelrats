scoreboard players operation #gr.naturalregeneration settings += #interaction tmp
scoreboard players operation #gr.naturalregeneration settings %= 2 const

execute if score #gr.naturalregeneration settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 441f
execute if score #gr.naturalregeneration settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 44f

execute if score #gr.naturalregeneration settings matches 0 run gamerule naturalRegeneration false
execute if score #gr.naturalregeneration settings matches 1 run gamerule naturalRegeneration true

execute if score #gr.naturalregeneration settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.natural_regen"}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #gr.naturalregeneration settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.natural_regen"}, " ", {"translate":"tr.text.setting.instruction.enabled", "color":"dark_green"}]