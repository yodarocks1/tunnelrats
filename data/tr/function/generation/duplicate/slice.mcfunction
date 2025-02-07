# execute store result storage tr:gen dupeX int 1 run scoreboard players add #currentX tmp 1
# execute if score #currentX tmp > #maxX tmp run function tr:generation/spawn_rooms/start
# execute if score #currentX tmp > #maxX tmp run return 0

# # tp @s ~-1 ~ ~
# function tr:generation/duplicate/clone_slice with storage tr:gen