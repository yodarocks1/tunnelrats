scoreboard players operation #tmp tmp = #death.effect.absorption settings
execute if score #death.effect.absorption settings matches 0 run function tr:lobby/settings/death/effects/absorption
execute if score #tmp tmp matches 0 run return 0

scoreboard players operation #death.effect.absorption.duration settings += #interaction tmp
scoreboard players operation #death.effect.absorption.duration settings %= 3 const

function tr:lobby/settings/death/effects/absorption_display