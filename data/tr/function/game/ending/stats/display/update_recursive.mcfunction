
$execute if score #current tmp < #existing tmp run data modify storage tr:tmp stat append value '[{"storage": "tr:stat", "nbt": "storage[{obj:\\"$(obj)\\"}].scores[$(place)].name"}, ": ",{"storage": "tr:stat", "nbt": "storage[{obj:\\"$(obj)\\"}].scores[$(place)].score", "color": "gold"}, "$(suffix)"]'
execute unless score #current tmp < #existing tmp run data modify storage tr:tmp stat append value '[{"text":" "}]'

execute store result storage tr:tmp place int 1 run scoreboard players add #current tmp 1

execute if score #current tmp < #maxSpots tmp run function tr:game/ending/stats/display/update_recursive with storage tr:tmp