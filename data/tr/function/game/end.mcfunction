scoreboard players set #game status 5
scoreboard players set #aftergame timer 0
effect give @a resistance infinite 5 true
gamemode spectator @a[team=.dead]

schedule function tr:game/reset 10s

bossbar set tr:grace.team1 players
bossbar set tr:grace.team2 players
