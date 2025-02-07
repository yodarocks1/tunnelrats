scoreboard players operation #tmp tmp = #death.effect.strength settings
execute if score #death.effect.strength settings matches 0 run function tr:lobby/settings/death/effects/strength
execute if score #tmp tmp matches 0 run return 0

scoreboard players operation #death.effect.strength.duration settings += #interaction tmp
scoreboard players operation #death.effect.strength.duration settings %= 3 const

function tr:lobby/settings/death/effects/strength_display