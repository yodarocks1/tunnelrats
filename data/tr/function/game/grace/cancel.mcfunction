$tellraw @a [{"translate":"tr.text.game.grace.cancel", "color": "green", "with": ["$(team)"]}]

$scoreboard players set #grace_team$(team) timer -1
$bossbar set tr:grace.team$(team) visible false