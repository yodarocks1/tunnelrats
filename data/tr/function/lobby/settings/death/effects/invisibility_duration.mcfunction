scoreboard players operation #tmp tmp = #death.effect.invisibility settings
execute if score #death.effect.invisibility settings matches 0 run function tr:lobby/settings/death/effects/invisibility
execute if score #tmp tmp matches 0 run return 0

scoreboard players operation #death.effect.invisibility.duration settings += #interaction tmp
scoreboard players operation #death.effect.invisibility.duration settings %= 3 const

function tr:lobby/settings/death/effects/invisibility_display