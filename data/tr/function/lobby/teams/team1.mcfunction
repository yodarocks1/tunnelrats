team join team1 @s
$tellraw @s [{"translate": "tr.text.setting.team.join.team1", "color": "$(colorText)"}]
tp @s ~ 137 12 ~180 ~

execute if score #team.color.1 settings matches 0 run particle dust{color:[0.98, 0.114, 0.051], scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10
execute if score #team.color.1 settings matches 1 run particle dust{color:[0.98, 0.545, 0.051], scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10
execute if score #team.color.1 settings matches 2 run particle dust{color:[0.051, 0.98, 0.204], scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10
execute if score #team.color.1 settings matches 3 run particle dust{color:[0.051, 0.22, 0.98], scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10
execute if score #team.color.1 settings matches 4 run particle dust{color:[0.73, 0.05, 0.98], scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10
execute if score #team.color.1 settings matches 5 run particle dust{color:[0.973, 0.365, 0.89], scale:1} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10