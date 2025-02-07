scoreboard players add @s deathTimer 1

scoreboard players operation @s tmp = #death.respawn.timer settings
scoreboard players operation @s tmp -= @s deathTimer

scoreboard players operation #s tmp = @s tmp
scoreboard players operation #ms tmp = @s tmp

scoreboard players operation #s tmp /= 20 const
scoreboard players operation #ms tmp %= 20 const
scoreboard players operation #ms tmp *= 5 const

execute if score #ms tmp matches ..9 run title @s actionbar [{"translate":"tr.title.game.respawn_cooldown", "color": "gold"}," ",{"score":{"name": "#s","objective": "tmp"}}, ".0", {"score":{"name": "#ms","objective": "tmp"}}]
execute if score #ms tmp matches 10.. run title @s actionbar [{"translate":"tr.title.game.respawn_cooldown", "color": "gold"}," ",{"score":{"name": "#s","objective": "tmp"}}, ".", {"score":{"name": "#ms","objective": "tmp"}}]

tp @s[scores={tsd=1},team=team1] 25 136 -8
tp @s[scores={tsd=1},team=team2] 25 136 -4
effect give @s weakness 1 10 true
effect give @s resistance 1 10 true
execute at @s[scores={tsd=1..}] as @e[type=item,distance=..1] run data merge entity @s {PickupDelay:0}

gamemode adventure @s[gamemode=!adventure]

execute if score @s deathTimer >= #death.respawn.timer settings run function tr:game/player/respawn