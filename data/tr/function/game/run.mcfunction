# game status
# 1: generating
# 2: setting up players
# 3: waiting for countdown
# 4: gameplay
# 5: post-game

execute if score #game status matches 2 run function tr:game/player/setup_players
execute if score #game status matches 3 run function tr:game/wait_to_start
execute if score #game status matches 4 run function tr:game/running
execute if score #game status matches 5 run function tr:game/ending

execute as @a[x=-2,y=200,z=-2,dx=4,dy=4,dz=4] run function tr:player/join