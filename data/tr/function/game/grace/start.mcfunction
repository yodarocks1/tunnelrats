$tellraw @a [{"translate":"tr.text.game.grace.explanation", "color": "red", "with": ["$(team)", "5", "4"]}]

$scoreboard players set #grace_team$(team) timer 6000

$bossbar set tr:grace.team$(team) max 6000
$bossbar set tr:grace.team$(team) visible true