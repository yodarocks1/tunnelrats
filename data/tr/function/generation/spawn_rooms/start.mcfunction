scoreboard players set #generation status 4
forceload remove all

execute store result score #totalXBed tmp run data get storage tr:gen template.totalX
execute store result storage tr:tmp bed.totalX int 1 run scoreboard players remove #totalXBed tmp 7
data modify storage tr:tmp bed.color1 set from storage tr:settings teams.team1.color
data modify storage tr:tmp bed.color2 set from storage tr:settings teams.team2.color

function tr:generation/spawn_rooms/run with storage tr:tmp bed

# generation is done
function tr:generation/end