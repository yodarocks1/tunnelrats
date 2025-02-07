# if a player in a team that used to be more than 1 player is now only 1 player
execute store result score #team1_players status if entity @a[team=team1]
execute store result score #team2_players status if entity @a[team=team2]

execute if score #team1_players status matches 1 if score #team1_players status < #team1_players_prev status run function tr:game/grace/start {team: 1}
execute if score #team2_players status matches 1 if score #team2_players status < #team2_players_prev status run function tr:game/grace/start {team: 2}

# check if grace needs to be cancelled
execute if score #team1_players status matches 2.. if score #team1_players_prev status matches ..1 run function tr:game/grace/cancel {team:1}
execute if score #team2_players status matches 2.. if score #team2_players_prev status matches ..1 run function tr:game/grace/cancel {team:2}

scoreboard players operation #team1_players_prev status = #team1_players status
scoreboard players operation #team2_players_prev status = #team2_players status

# progress grace
execute if score #grace_team1 timer matches 0.. run function tr:game/grace/count {team: 1}
execute if score #grace_team2 timer matches 0.. run function tr:game/grace/count {team: 2}

# glow effect

execute if score #grace_team1 timer matches 0..1200 run effect give @a[team=team2] glowing 1 0 false
execute if score #grace_team2 timer matches 0..1200 run effect give @a[team=team1] glowing 1 0 false