$execute unless data storage tr:downloads $(id).sections[$(next_sum_id)] run return run scoreboard players get #running_sum_x tmp
$execute store result score #next_sum_value_x tmp run data get storage tr:downloads $(id).sections[$(next_sum_id)].x
scoreboard players operation #running_sum_x tmp += #next_sum_value_x tmp
execute store result storage tr:tmp running_sum_x.next_sum_id int 1 run scoreboard players add #next_sum_id_x tmp 1
function tr:data_update/_do_sum_x with storage tr:tmp running_sum_x