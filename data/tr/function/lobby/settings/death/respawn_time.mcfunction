execute if score #interaction tmp matches 1 if score #death.respawn.timer settings matches 400 run scoreboard players set #death.respawn.timer settings -1
execute if score #interaction tmp matches 1 if score #death.respawn.timer settings matches 200 run scoreboard players set #death.respawn.timer settings 400
execute if score #interaction tmp matches 1 if score #death.respawn.timer settings matches 100 run scoreboard players set #death.respawn.timer settings 200
execute if score #interaction tmp matches 1 if score #death.respawn.timer settings matches 0 run scoreboard players set #death.respawn.timer settings 100
execute if score #interaction tmp matches 1 if score #death.respawn.timer settings matches -1 run scoreboard players set #death.respawn.timer settings 0

execute if score #interaction tmp matches -1 if score #death.respawn.timer settings matches 0 run scoreboard players set #death.respawn.timer settings -1
execute if score #interaction tmp matches -1 if score #death.respawn.timer settings matches 100 run scoreboard players set #death.respawn.timer settings 0
execute if score #interaction tmp matches -1 if score #death.respawn.timer settings matches 200 run scoreboard players set #death.respawn.timer settings 100
execute if score #interaction tmp matches -1 if score #death.respawn.timer settings matches 400 run scoreboard players set #death.respawn.timer settings 200
execute if score #interaction tmp matches -1 if score #death.respawn.timer settings matches -1 run scoreboard players set #death.respawn.timer settings 400

execute if score #death.respawn.timer settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 261f
execute if score #death.respawn.timer settings matches 100 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 262f
execute if score #death.respawn.timer settings matches 200 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 263f
execute if score #death.respawn.timer settings matches 400 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 264f

execute if score #death.respawn.timer settings matches 0 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.respawn_time", "with":[{"text":"0"}]}] 
execute if score #death.respawn.timer settings matches 100 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.respawn_time", "with":[{"text":"5"}]}]
execute if score #death.respawn.timer settings matches 200 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.respawn_time", "with":[{"text":"10"}]}]
execute if score #death.respawn.timer settings matches 400 run tellraw @p[tag=interactor] [{"color":"gold", "translate":"tr.text.setting.instruction.respawn_time", "with":[{"text":"20"}]}]