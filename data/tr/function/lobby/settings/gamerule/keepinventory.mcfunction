scoreboard players operation #gr.keepinventory settings += #interaction tmp
scoreboard players operation #gr.keepinventory settings %= 2 const

execute if score #gr.keepinventory settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 471f
execute if score #gr.keepinventory settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 47f

execute if score #gr.keepinventory settings matches 0 run gamerule keepInventory false
execute if score #gr.keepinventory settings matches 1 run gamerule keepInventory true

execute if score #gr.keepinventory settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.keep_inventory"}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #gr.keepinventory settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.keep_inventory"}, " ", {"translate":"tr.text.setting.instruction.enabled", "color":"dark_green"}]