$data modify storage tr:settings arenas[{name:"$(old)"}].name set value "$(name)"
$data modify storage tr:admin arena.name set value "$(name)"
execute as @e[type=text_display,tag=admin.menu,tag=admin.arena] run data modify entity @s text set value '{"nbt":"arena.name","storage":"tr:admin","color":"yellow"}'