$data modify storage tr:tmp newSetup.name set value "$(name)"
# replace if previous one exists
$execute store result score #r tmp if data storage tr:settings arenas[{name:"$(name)"}] 
$execute if score #r tmp matches 1.. run data modify storage tr:settings arenas[{name:"$(name)"}] set from storage tr:tmp newSetup
# else append new one to array
execute if score #r tmp matches 0 run data modify storage tr:settings arenas append from storage tr:tmp newSetup

function tr:generation/setup/update_lobby_preview