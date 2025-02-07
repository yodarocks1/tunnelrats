tellraw @a ["\n",{"translate":"tr.text.game.win.tie", "color": "red"},"\n"]
title @a times 1s 5s 1s
title @a title [{"translate":"tr.title.game.win.tie", "color": "red"}]

scoreboard players set #winningTeam tmp 99

function tr:game/end