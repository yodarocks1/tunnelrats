## general cleanup
data remove entity @s attack
data remove entity @s interaction

## advert
execute if entity @s[tag=advert] as @p[tag=interactor] run function tr:lobby/ad/interact
execute if entity @s[tag=advert] run return 1

## admin
execute if entity @s[tag=admin.interaction] run function tr:lobby/admin/interactions/interact/found_entity
execute if entity @s[tag=admin.interaction] run return 1
execute if entity @s[tag=admin.menu] run function tr:lobby/admin/interactions/menu/found_entity
execute if entity @s[tag=admin.menu] run return 1

## settings
execute if entity @s[tag=a4] run function tr:lobby/settings/misc/netherite
execute if entity @s[tag=a5] run function tr:lobby/settings/misc/coordinates
execute if entity @s[tag=a6] run function tr:lobby/settings/misc/start_time
execute if entity @s[tag=a7] run function tr:lobby/settings/misc/effects/night_vision
execute if entity @s[tag=a8] run function tr:lobby/settings/misc/effects/haste
execute if entity @s[tag=a9] run function tr:lobby/settings/misc/effects/speed

execute if entity @s[tag=b4] run function tr:lobby/settings/death/spectate_after_elimination
execute if entity @s[tag=b5] run function tr:lobby/settings/death/effects/invisibility
execute if entity @s[tag=b5l] run function tr:lobby/settings/death/effects/invisibility_duration
# execute if entity @s[tag=b5r] run function tr:lobby/settings/death/effects/invisibility_strength
execute if entity @s[tag=b6] run function tr:lobby/settings/death/respawn_time
execute if entity @s[tag=b7] run function tr:lobby/settings/death/effects/absorption
execute if entity @s[tag=b7l] run function tr:lobby/settings/death/effects/absorption_duration
execute if entity @s[tag=b7r] run function tr:lobby/settings/death/effects/absorption_strength
execute if entity @s[tag=b8] run function tr:lobby/settings/death/effects/resistance
execute if entity @s[tag=b8l] run function tr:lobby/settings/death/effects/resistance_duration
execute if entity @s[tag=b8r] run function tr:lobby/settings/death/effects/resistance_strength
execute if entity @s[tag=b9] run function tr:lobby/settings/death/effects/strength
execute if entity @s[tag=b9l] run function tr:lobby/settings/death/effects/strength_duration
execute if entity @s[tag=b9r] run function tr:lobby/settings/death/effects/strength_strength

execute if entity @s[tag=d4] run function tr:lobby/settings/gamerule/naturalregeneration
execute if entity @s[tag=d5] run function tr:lobby/settings/gamerule/mobspawning
execute if entity @s[tag=d6] run function tr:lobby/settings/gamerule/firespread
execute if entity @s[tag=d7] run function tr:lobby/settings/gamerule/keepinventory
execute if entity @s[tag=d8] run function tr:lobby/settings/gamerule/announceadvancements
# execute if entity @s[tag=d9] run function tr:lobby/settings/gamerule/immediaterespawn

# execute if entity @s[tag=e4] run function tr:lobby/settings/team/
execute if entity @s[tag=e5] run function tr:lobby/settings/team/armortrim
# execute if entity @s[tag=e6] run function tr:lobby/settings/team/
execute if entity @s[tag=e7] run function tr:lobby/settings/team/color1
execute if entity @s[tag=e8] run function tr:lobby/settings/team/mode
execute if entity @s[tag=e9] run function tr:lobby/settings/team/color2

# execute if entity @s[tag=c4] run function tr:lobby/settings/
execute if entity @s[tag=c5] run function tr:game/start
execute if entity @s[tag=c6] run function tr:lobby/settings/reset_check
execute if entity @s[tag=c7] run scoreboard players set #interaction tmp 1
execute if entity @s[tag=c7] run function tr:lobby/settings/map/next
execute if entity @s[tag=c9] run scoreboard players set #interaction tmp -1
execute if entity @s[tag=c9] run function tr:lobby/settings/map/next

execute if entity @s[tag=c8] run function tr:lobby/settings/map/info
