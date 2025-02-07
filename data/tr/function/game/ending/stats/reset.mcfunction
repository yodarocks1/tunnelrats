scoreboard objectives remove stat.wins
scoreboard objectives remove stat.kills.round
scoreboard objectives remove stat.kills.total
scoreboard objectives remove stat.deaths.round
scoreboard objectives remove stat.deaths.total
scoreboard objectives remove stat.dmg_dealt.round
scoreboard objectives remove stat.dmg_dealt.total
scoreboard objectives remove stat.dmg_taken.round
scoreboard objectives remove stat.dmg_taken.total

scoreboard objectives add stat.wins dummy
scoreboard objectives add stat.kills.round playerKillCount
scoreboard objectives add stat.kills.total playerKillCount
scoreboard objectives add stat.deaths.round deathCount
scoreboard objectives add stat.deaths.total deathCount
scoreboard objectives add stat.dmg_dealt.round minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stat.dmg_dealt.total minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stat.dmg_taken.round minecraft.custom:minecraft.damage_taken
scoreboard objectives add stat.dmg_taken.total minecraft.custom:minecraft.damage_taken

data remove storage tr:stat storage
kill @e[tag=stat.display]