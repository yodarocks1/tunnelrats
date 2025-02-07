# returns 1 if a map with this name already exists

$execute if data storage tr:settings arenas[{name:"$(name)"}] run return 1
return 0