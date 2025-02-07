scoreboard players operation #tmp tmp = #death.effect.resistance settings
execute if score #death.effect.resistance settings matches 0 run function tr:lobby/settings/death/effects/resistance
execute if score #tmp tmp matches 0 run return 0

scoreboard players operation #death.effect.resistance.duration settings += #interaction tmp
scoreboard players operation #death.effect.resistance.duration settings %= 3 const

function tr:lobby/settings/death/effects/resistance_display