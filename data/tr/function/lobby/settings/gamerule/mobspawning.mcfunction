scoreboard players operation #gr.mobspawning settings += #interaction tmp
scoreboard players operation #gr.mobspawning settings %= 2 const

execute if score #gr.mobspawning settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 451f
execute if score #gr.mobspawning settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 45f

execute if score #gr.mobspawning settings matches 0 run gamerule doMobSpawning false
execute if score #gr.mobspawning settings matches 1 run gamerule doMobSpawning true

execute if score #gr.mobspawning settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.mob_spawning"}, " ", {"translate":"tr.text.setting.instruction.disabled", "color":"dark_red"}]
execute if score #gr.mobspawning settings matches 1 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.mob_spawning"}, " ", {"translate":"tr.text.setting.instruction.enabled", "color":"dark_green"}]