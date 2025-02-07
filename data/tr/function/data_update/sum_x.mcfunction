$scoreboard players set #running_sum_x tmp $(inset)
scoreboard players operation #running_sum_x tmp *= -1 const
#execute if score #running_sum_x matches 1.. run scoreboard players set #running_sum_x tmp 0
scoreboard players add #running_sum_x tmp 7
scoreboard players set #next_sum_id_x tmp 0
$data modify storage tr:tmp running_sum_x set value {id:"$(id)",next_sum_id:0}

function tr:data_update/_do_sum_x with storage tr:tmp running_sum_x
data remove storage tr:tmp running_sum_x

return run scoreboard players get #running_sum_x tmp