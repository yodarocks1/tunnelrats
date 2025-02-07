scoreboard players operation #netherite settings += #interaction tmp
scoreboard players operation #netherite settings %= 2 const

execute if score #netherite settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 141f
execute if score #netherite settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 14f

execute if score #netherite settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.netherite", "with":[{"translate":"item.minecraft.netherite_upgrade_smithing_template"}, {"translate":"item.minecraft.diamond"}]}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #netherite settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.netherite", "with":[{"translate":"item.minecraft.netherite_upgrade_smithing_template"}, {"translate":"item.minecraft.diamond"}]}, " ", {"translate":"tr.text.setting.instruction.enabled", "color":"dark_green"}]