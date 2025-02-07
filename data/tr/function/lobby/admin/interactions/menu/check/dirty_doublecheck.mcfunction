# $data modify storage tr:tmp oldSetup set from storage tr:settings arenas[{name:"$(name)"}]
# execute positioned -32 139 9 run function tr:generation/setup/parse
# execute store success score #s tmp run data modify storage tr:tmp oldSetup.sections set from storage tr:tmp newSetup.sections
# execute if score #s tmp matches 1 run scoreboard players set #admin.dirty status 1

execute store success score #s tmp if blocks -32 138 -9 -32 149 9 -32 152 -9 all
execute if score #s tmp matches 0 run scoreboard players set #admin.dirty status 1