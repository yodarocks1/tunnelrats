execute as @a[x=2,y=138,z=15,dx=4,team=!team1] at @s run function tr:lobby/teams/team1 with storage tr:settings teams.team1
execute as @a[x=-12,y=138,z=15,dx=4,team=!team2] at @s run function tr:lobby/teams/team2 with storage tr:settings teams.team2
execute as @a[x=-6,y=136,z=15,dx=2,dz=2,team=!spectator] at @s run function tr:lobby/teams/spectator
execute as @a[x=-2,y=136,z=15,dx=2,dz=2,team=!] at @s run function tr:lobby/teams/leave
