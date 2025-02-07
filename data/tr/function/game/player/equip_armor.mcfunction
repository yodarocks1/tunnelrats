advancement revoke @s only tr:equip_armor

execute if score #team.trims settings matches 0 run return 0

scoreboard players operation @s[team=team1] color = #team.color.1 settings
scoreboard players operation @s[team=team2] color = #team.color.2 settings

item modify entity @s armor.head tr:to_team_armor
item modify entity @s armor.chest tr:to_team_armor
item modify entity @s armor.legs tr:to_team_armor
item modify entity @s armor.feet tr:to_team_armor