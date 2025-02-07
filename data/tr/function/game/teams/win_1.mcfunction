$tellraw @a [{"translate":"tr.text.game.win.team_1", "with":[{"text":"$(color)"}],"color":"$(colorText)"}]

title @a times 1s 5s 1s
$title @a title [{"translate":"tr.text.game.win.team_1", "with":[{"text":"$(color)"}],"color":"$(colorText)"}]
function tr:game/end
gamemode spectator @a[team=team2]

scoreboard players operation #winningTeam tmp = #team.color.1 settings

scoreboard players add @a[team=team1] stat.wins 1