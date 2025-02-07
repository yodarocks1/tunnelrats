scoreboard players remove #gameStart timer 1

# bed warning title
title @a times 0t 5t 0t
title @a subtitle [""]
execute as @a[team=!spectator,nbt={SpawnY: 200}] run title @s subtitle [{"translate": "tr.title.game.bed_warning","color": "red"}]
title @a title [""]

# timer title
scoreboard players operation #tmp tmp = #gameStart timer
scoreboard players operation #tmp tmp /= 20 const
scoreboard players add #tmp tmp 1
title @a actionbar [{"translate": "tr.title.game.start_cooldown","color": "gold", "with":[{"score":{"name": "#tmp","objective": "tmp"}}]}]
execute if score #gameStart timer matches 0 run title @a actionbar [""]

# ticking sound
scoreboard players operation #tmp tmp = #gameStart timer
scoreboard players operation #tmp tmp %= 20 const
execute if score #tmp tmp matches 0 if score #gameStart timer matches 0 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score #tmp tmp matches 0 if score #gameStart timer matches 1..60 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
execute if score #tmp tmp matches 0 if score #gameStart timer matches 61.. as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 2

# next phase
execute if score #gameStart timer matches ..0 run scoreboard players set #game status 4
execute if score #gameStart timer matches ..0 run gamemode survival @a[gamemode=adventure]
execute if score #gameStart timer matches ..0 run title @a times 0t 5t 5t
execute if score #gameStart timer matches ..0 run title @a[gamemode=spectator] times 5t 5s 5t
execute if score #gameStart timer matches ..0 run title @a title [{"translate": "tr.title.game.start","color": "green"}]