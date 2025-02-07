execute if score #interaction tmp matches 1 if score #game.start.timer settings matches 120 run scoreboard players set #game.start.timer settings 0
execute if score #interaction tmp matches 1 if score #game.start.timer settings matches 90 run scoreboard players set #game.start.timer settings 120
execute if score #interaction tmp matches 1 if score #game.start.timer settings matches 60 run scoreboard players set #game.start.timer settings 90
execute if score #interaction tmp matches 1 if score #game.start.timer settings matches 30 run scoreboard players set #game.start.timer settings 60
execute if score #interaction tmp matches 1 if score #game.start.timer settings matches 5 run scoreboard players set #game.start.timer settings 30
execute if score #interaction tmp matches 1 if score #game.start.timer settings matches 0 run scoreboard players set #game.start.timer settings 5

execute if score #interaction tmp matches -1 if score #game.start.timer settings matches 5 run scoreboard players set #game.start.timer settings 0
execute if score #interaction tmp matches -1 if score #game.start.timer settings matches 30 run scoreboard players set #game.start.timer settings 5
execute if score #interaction tmp matches -1 if score #game.start.timer settings matches 60 run scoreboard players set #game.start.timer settings 30
execute if score #interaction tmp matches -1 if score #game.start.timer settings matches 90 run scoreboard players set #game.start.timer settings 60
execute if score #interaction tmp matches -1 if score #game.start.timer settings matches 120 run scoreboard players set #game.start.timer settings 90
execute if score #interaction tmp matches -1 if score #game.start.timer settings matches 0 run scoreboard players set #game.start.timer settings 120

# data modify block ~ ~ ~ front_text.messages[2] set value '[{"score":{"name":"#game.start.timer","objective":"settings"},"color":"green"},"s"]'
execute if score #game.start.timer settings matches 5 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 165f
execute if score #game.start.timer settings matches 30 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 161f
execute if score #game.start.timer settings matches 60 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 162f
execute if score #game.start.timer settings matches 90 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 163f
execute if score #game.start.timer settings matches 120 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 164f

tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.start_time", "with": [{"score": {"name":"#game.start.timer", "objective": "settings"}}]}]