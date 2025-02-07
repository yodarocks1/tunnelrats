scoreboard players set #max tmp -2147483648
$execute as @a run scoreboard players operation #max tmp > @s stat.$(obj).round
$execute as @a if score @s stat.$(obj).round = #max tmp run tag @s add highscore

execute if score #max tmp matches 0 run tag @a remove highscore
execute if score #max tmp matches 0 run return 0

title @a times 10 60 10

$title @a title [{"translate": "tr.title.game.stat.$(obj)", "color": "$(color)", "with": [{"selector": "@a[tag=highscore]"}, {"score": {"name": "#max", "objective": "tmp"}}]}]
$tellraw @a [{"translate": "tr.text.game.stat.$(obj)", "color": "$(color)", "with": [{"selector": "@a[tag=highscore]"}, {"score": {"name": "#max", "objective": "tmp"}}]}]

tag @a remove highscore