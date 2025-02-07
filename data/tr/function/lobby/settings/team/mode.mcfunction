scoreboard players operation #team.mode settings += #interaction tmp
scoreboard players operation #team.mode settings %= 3 const

execute if score #team.mode settings matches 0 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 582f
execute if score #team.mode settings matches 0 run tellraw @p[tag=interactor] ["",{"translate":"tr.text.setting.team.mode.random.name","color":"gold"}, "\n", {"translate":"tr.text.setting.team.mode.random.explanation","color":"gray"}]

execute if score #team.mode settings matches 1 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 583f
execute if score #team.mode settings matches 1 run tellraw @p[tag=interactor] ["",{"translate":"tr.text.setting.team.mode.choice.name","color":"gold"}, "\n", {"translate":"tr.text.setting.team.mode.choice.explanation","color":"gray"}]

execute if score #team.mode settings matches 2 run data modify entity @e[type=item_display,limit=1,sort=nearest,tag=settings.icon] item.components."minecraft:custom_model_data".floats[0] set value 581f
execute if score #team.mode settings matches 2 run tellraw @p[tag=interactor] ["",{"translate":"tr.text.setting.team.mode.all_random.name","color":"gold"}, "\n", {"translate":"tr.text.setting.team.mode.all_random.explanation","color":"gray"}]