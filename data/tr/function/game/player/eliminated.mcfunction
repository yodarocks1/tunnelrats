tellraw @a [{"translate": "tr.text.game.player.eliminated","color": "red", "with":[{"selector":"@s"}]}]

team join .dead @s
tp @s -3 138 -21 180 0
clear @s

execute if score #death.spectate_elim settings matches 0 run gamemode adventure
execute if score #death.spectate_elim settings matches 1 run gamemode spectator
execute if score #death.spectate_elim settings matches 1 run tp @s[team=team1] @a[limit=1,team=team1,gamemode=adventure]
execute if score #death.spectate_elim settings matches 1 run tp @s[team=team2] @a[limit=1,team=team2,gamemode=adventure]
execute if score #death.spectate_elim settings matches 1 run effect give @s night_vision infinite

scoreboard players set @s death 0