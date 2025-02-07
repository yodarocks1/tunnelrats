scoreboard players set #netherite settings 1
scoreboard players set #coordinates settings 0
scoreboard players set #game.start.timer settings 30
scoreboard players set #effect.night_vision settings 0
scoreboard players set #effect.haste settings 1
scoreboard players set #effect.speed settings 1

scoreboard players set #death.spectate_elim settings 0
scoreboard players set #death.effect.invisibility settings 0
scoreboard players set #death.respawn.timer settings 0
scoreboard players set #death.effect.absorption settings 0
scoreboard players set #death.effect.resistance settings 0
scoreboard players set #death.effect.strength settings 0
scoreboard players set #death.effect.absorption.strength settings 0
scoreboard players set #death.effect.resistance.strength settings 0
scoreboard players set #death.effect.strength.strength settings 0
scoreboard players set #death.effect.absorption.duration settings 0
scoreboard players set #death.effect.resistance.duration settings 0
scoreboard players set #death.effect.strength.duration settings 0
scoreboard players set #death.effect.invisibility.duration settings 0

scoreboard players set #gr.naturalregeneration settings 1
scoreboard players set #gr.mobspawning settings 1
scoreboard players set #gr.firespread settings 0
scoreboard players set #gr.keepinventory settings 0
scoreboard players set #gr.announceadvancements settings 0
scoreboard players set #gr.immediaterespawn settings 0

scoreboard players set #team.mode settings 0
# scoreboard players set #team.color.1 settings 2
# scoreboard players set #team.color.2 settings 1
scoreboard players set #team.trims settings 1


# sync the display entities to the new settings
scoreboard players set #interaction tmp 0
execute as @e[type=interaction,tag=settings.icon,tag=!c7,tag=!c9,tag=!e7,tag=!e9] at @s run function tr:lobby/settings/interact/found_entity

# reset reset trigger
execute as @a run trigger reset_settings set 0
scoreboard players reset @a reset_settings

tellraw @s [{"translate": "tr.text.setting.instruction.reset", "color": "red"}]