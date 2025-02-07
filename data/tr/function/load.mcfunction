# scoreboard setups
scoreboard objectives add tmp dummy
scoreboard objectives add const dummy
scoreboard objectives add settings dummy
scoreboard objectives add timer dummy
scoreboard objectives add status dummy
scoreboard objectives add color dummy
scoreboard objectives add death deathCount
scoreboard objectives add tsd custom:time_since_death
scoreboard objectives add deathTimer dummy
scoreboard objectives add leave custom:leave_game
scoreboard objectives add activeGame dummy
scoreboard objectives add credits dummy
scoreboard objectives add reset_settings trigger {"translate": "tr.text.name.reset_settings"}

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add p dummy

scoreboard players set -1 const -1
scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 5 const 5
scoreboard players set 6 const 6
scoreboard players set 10 const 10
scoreboard players set 11 const 11
scoreboard players set 12 const 12
scoreboard players set 20 const 20
scoreboard players set 50 const 50
scoreboard players set 60 const 60
scoreboard players set 100 const 100
scoreboard players set 1200 const 1200
scoreboard players set 10000 const 10000
scoreboard players set -10 const -10

# Team Setups
team add spectator "Spectator"
team add .dead "Dead"
team add team1
team add team2

team modify spectator prefix "👁 "
team modify .dead prefix "☠ "
team modify .dead color gray
team modify .dead friendlyFire false

# Settings Setup
scoreboard players add #team.mode settings 0
scoreboard players add #team.color.1 settings 0
scoreboard players add #team.color.2 settings 0
scoreboard players add #team.trims settings 0
scoreboard players add #effect.haste settings 0
scoreboard players add #effect.speed settings 0
scoreboard players add #effect.night_vision settings 0
scoreboard players add #map.selection settings 0
scoreboard players add #gr.naturalregeneration settings 0
scoreboard players add #gr.mobspawning settings 0
scoreboard players add #gr.firespread settings 0
scoreboard players add #gr.announceadvancements settings 0
scoreboard players add #gr.keepinventory settings 0
scoreboard players add #gr.immediaterespawn settings 0
scoreboard players add #death.spectate_elim settings 0
scoreboard players add #death.respawn.timer settings 0
scoreboard players add #death.effect.resistance settings 0
scoreboard players add #death.effect.resistance.strength settings 0
scoreboard players add #death.effect.resistance.duration settings 0
scoreboard players add #death.effect.invisibility settings 0
scoreboard players add #death.effect.invisibility.strength settings 0
scoreboard players add #death.effect.invisibility.duration settings 0
scoreboard players add #death.effect.absorption settings 0
scoreboard players add #death.effect.absorption.strength settings 0
scoreboard players add #death.effect.absorption.duration settings 0
scoreboard players add #death.effect.strength settings 0
scoreboard players add #death.effect.strength.strength settings 0
scoreboard players add #death.effect.strength.duration settings 0
scoreboard players add #coordinates settings 0
scoreboard players add #netherite settings 0

execute unless score #game.start.timer settings = #game.start.timer settings run scoreboard players set #game.start.timer settings 5
execute unless score #death.respawn.timer settings = #death.respawn.timer settings run scoreboard players set #death.respawn.timer settings 5

# Statistics Setup
scoreboard objectives add stat.wins dummy
scoreboard objectives add stat.kills.round playerKillCount
scoreboard objectives add stat.kills.total playerKillCount
scoreboard objectives add stat.deaths.round deathCount
scoreboard objectives add stat.deaths.total deathCount
scoreboard objectives add stat.dmg_dealt.round minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stat.dmg_dealt.total minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stat.dmg_taken.round minecraft.custom:minecraft.damage_taken
scoreboard objectives add stat.dmg_taken.total minecraft.custom:minecraft.damage_taken

# Data Setup
execute unless data storage tr:settings teams.team1 run data merge storage tr:settings {teams:{team1:{color:"red",colorText:"red"},team2:{color:"blue",colorText:"blue"}}}
execute unless data storage tr:settings arena.name run data modify storage tr:settings arena.name set from storage tr:settings arenas[0].name

execute unless score #current activeGame = #current activeGame run scoreboard players set #current activeGame 1
scoreboard players add #admin.present tmp 0

scoreboard players add #admin.save.confirm timer 0
scoreboard players add #admin.delete.confirm timer 0
scoreboard players add #admin.new.confirm timer 0

gamerule doImmediateRespawn true

# bossbar setup
bossbar add tr:grace.team1 ""
bossbar add tr:grace.team2 ""
bossbar set tr:grace.team1 color red
bossbar set tr:grace.team2 color red
bossbar set tr:grace.team1 name {"translate":"tr.bossbar.game.grace","with":[{"text":"1"}]}
bossbar set tr:grace.team2 name {"translate":"tr.bossbar.game.grace","with":[{"text":"2"}]}

# credits return item setup
scoreboard objectives add return minecraft.used:minecraft.stick

# gamerules
gamerule spawnRadius 0
gamerule maxCommandChainLength 1000000
gamerule playersNetherPortalCreativeDelay 2000000000
gamerule playersNetherPortalDefaultDelay 2000000000
