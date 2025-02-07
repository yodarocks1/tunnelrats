$tellraw @a [{"translate":"tr.text.game.win.team_2", "with":[{"text":"$(color)"}],"color":"$(colorText)"}]

title @a times 1s 5s 1s
$title @a title [{"translate":"tr.text.game.win.team_2", "with":[{"text":"$(color)"}],"color":"$(colorText)"}]
function tr:game/end
gamemode spectator @a[team=team1]

scoreboard players operation #winningTeam tmp = #team.color.2 settings

scoreboard players add @a[team=team2] stat.wins 2