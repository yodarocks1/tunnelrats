scoreboard players add #team.color.1 settings 1
scoreboard players operation #team.color.1 settings %= 6 const

execute if score #team.color.1 settings = #team.color.2 settings run scoreboard players add #team.color.1 settings 1
scoreboard players operation #team.color.1 settings %= 6 const

execute if score #team.color.1 settings matches 0 run function tr:lobby/settings/team/set_color {color: "dark_red", color2: "red", team: 1}
execute if score #team.color.1 settings matches 1 run function tr:lobby/settings/team/set_color {color: "gold", color2: "orange", team: 1}
execute if score #team.color.1 settings matches 2 run function tr:lobby/settings/team/set_color {color: "green", color2: "lime", team: 1}
execute if score #team.color.1 settings matches 3 run function tr:lobby/settings/team/set_color {color: "dark_blue", color2: "blue", team: 1}
execute if score #team.color.1 settings matches 4 run function tr:lobby/settings/team/set_color {color: "dark_purple", color2: "purple", team: 1}
execute if score #team.color.1 settings matches 5 run function tr:lobby/settings/team/set_color {color: "light_purple", color2: "pink", team: 1}