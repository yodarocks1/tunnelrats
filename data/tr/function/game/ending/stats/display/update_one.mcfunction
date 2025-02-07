# reset if needed
$scoreboard players set #tmp tmp $(reset)
$execute if score #tmp tmp matches 1.. run data remove storage tr:stat storage[{obj: "$(obj)"}]

# save player data
$data modify storage tr:tmp obj set value "$(obj)"
$execute as @a run function tr:game/ending/stats/display/store {obj: "$(obj)", scale: $(scale)}

# sort array
$function sort:search {type: "storage", target: "tr:stat", targetPath: 'storage[{obj: "$(obj)"}].scores', attribute: ".score", scale: 1}

# create text
$data modify storage tr:tmp stat set value ['["", {"translate":"tr.text.stat.title.$(obj)", "color": "green"}]']

# go through existing players texts
$execute as @a run scoreboard players operation @s tmp = @s stat.$(obj) 
scoreboard players set #maxSpots tmp 10
$execute store result score #existing tmp run data get storage tr:stat storage[{obj: "$(obj)"}].scores
# scoreboard players operation #maxSpots tmp < #existing tmp
execute store result storage tr:tmp place int 1 run scoreboard players set #current tmp 0

$data modify storage tr:tmp suffix set value "$(suffix)"
function tr:game/ending/stats/display/update_recursive with storage tr:tmp

# summon text display
execute as @e[tag=tr.tmp_name,limit=1] run item modify entity @s weapon.mainhand tr:page_to_lore
execute as @e[tag=tr.tmp_name,limit=1] run data modify storage tr:tmp stat set from entity @s HandItems[0].components."minecraft:lore"[]

$execute as @e[tag=tr.tmp_name,limit=1] run summon text_display $(x) $(y) $(z) { text: '{"nbt": "stat", "storage": "tr:tmp", "interpret": true}', alignment: "center", billboard: "vertical", view_range: 0.1f, brightness: {block: 15, sky: 15}, Tags:["stat.display"]}
# execute as @e[tag=tr.tmp_name,limit=1] run tellraw @a {"nbt": "HandItems[0].components.\"minecraft:lore\"[]", "entity": "@s", "interpret": true}