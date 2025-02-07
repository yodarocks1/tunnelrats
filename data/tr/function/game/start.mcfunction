execute if score #interaction tmp matches 0 run return 0

execute if score #game status matches 1.. run tellraw @p [{"translate": "tr.text.game.error.in_progress","color": "red"}]
execute if score #game status matches 1.. run return 0

execute store result score #r tmp run function tr:generation/check_start
execute if score #r tmp matches 0 run return 0

effect clear @a
clear @a

team empty .dead
# put players into teams
execute if score #team.mode settings matches 0 run function tr:game/teams/fill_random
execute if score #team.mode settings matches 1 run function tr:game/teams/choice_only
execute if score #team.mode settings matches 2 run function tr:game/teams/fully_random

scoreboard players set #teamtest tmp 0
execute if entity @a[team=team1] if entity @a[team=team2] run scoreboard players set #teamtest tmp 1
execute if score #teamtest tmp matches 0 run tellraw @p [{"translate": "tr.text.game.error.empty_team","color": "red"}]
execute if score #teamtest tmp matches 0 run return 0

scoreboard players set @a[team=spectator] color -1

scoreboard players set #game status 1

scoreboard players add #current activeGame 1
scoreboard players operation @a activeGame = #current activeGame

scoreboard players reset * death
scoreboard players reset * deathTimer

scoreboard players set #grace_team1 timer -1
scoreboard players set #grace_team2 timer -1
execute store result score #team1_players status if entity @a[team=team1]
execute store result score #team2_players status if entity @a[team=team2]
scoreboard players operation #team1_players_prev status = #team1_players status
scoreboard players operation #team2_players_prev status = #team2_players status


# remove advancements
advancement revoke @a everything

# wall off howtoplay area
fill -5 140 -17 -1 138 -17 minecraft:tinted_glass

# generate arena
function tr:generation/start

# netherite
execute if score #netherite settings matches 1 run datapack enable "file/netherite_recipe"

# reset reset trigger
execute as @a run trigger reset_settings set 0
scoreboard players reset * reset_settings

# tellraw info about selected arena
tellraw @a ["\n", {"translate":"tr.text.game.selected_arena", "with": [{"nbt":"arena.name", "storage": "tr:settings", "color": "gold"}]}]
execute if data storage tr:settings arena.info run tellraw @a [{"nbt":"arena.info", "storage": "tr:settings", "color": "green", "interpret": true}, "\n"]

# remove ender chest items
execute as @a run function tr:game/player/remove_enderchest

# bossbars for grace
bossbar set tr:grace.team1 players
bossbar set tr:grace.team2 players
bossbar set tr:grace.team1 players @a[team=!team2]
bossbar set tr:grace.team2 players @a[team=!team1]
bossbar set tr:grace.team1 visible false
bossbar set tr:grace.team2 visible false

# reset round scoreboards
scoreboard objectives remove stat.kills.round
scoreboard objectives remove stat.deaths.round
scoreboard objectives remove stat.dmg_dealt.round
scoreboard objectives remove stat.dmg_taken.round
scoreboard objectives add stat.kills.round playerKillCount
scoreboard objectives add stat.deaths.round deathCount
scoreboard objectives add stat.dmg_dealt.round minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stat.dmg_taken.round minecraft.custom:minecraft.damage_taken

# show advert
schedule function tr:lobby/ad/global_info 1s

# reset spawnpoints
spawnpoint @a 0 200 0