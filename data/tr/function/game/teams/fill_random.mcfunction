execute store result score #team1 tmp if entity @a[team=team1]
execute store result score #team2 tmp if entity @a[team=team2]

execute if score #team1 tmp <= #team2 tmp run team join team1 @a[sort=random,limit=1,team=]
execute if score #team1 tmp > #team2 tmp run team join team2 @a[sort=random,limit=1,team=]

execute if entity @a[team=] run function tr:game/teams/fill_random