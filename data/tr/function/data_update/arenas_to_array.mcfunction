execute unless data storage tr:settings arenas run data merge storage tr:settings {arenas:[]}

$data modify storage tr:arenas $(name).name set value "$(name)"
$data modify storage tr:settings arenas append from storage tr:arenas $(name)
$data remove storage tr:arenas $(name)