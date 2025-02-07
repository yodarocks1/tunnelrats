# checks whether a specified arena exists in memory
$data modify storage tr:gen template set from storage tr:settings arenas[{name:"$(name)"}]
$execute if data storage tr:settings arenas[{name:"$(name)"}] run return 1
return 0