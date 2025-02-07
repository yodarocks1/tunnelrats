scoreboard players operation #tmp tmp = #death.effect.resistance settings
execute if score #death.effect.resistance settings matches 0 run function tr:lobby/settings/death/effects/resistance
execute if score #tmp tmp matches 0 run return 0

scoreboard players operation #death.effect.resistance.strength settings += #interaction tmp
scoreboard players operation #death.effect.resistance.strength settings %= 2 const

function tr:lobby/settings/death/effects/resistance_display