# If we have already installed this version of this map, skip it (return 1) unless the version is 'dev' - then load it every time
$execute if data storage tr:downloads $(user_id).$(map_id).version."$(version)" unless data storage tr:downloads $(user_id).$(map_id).version.dev run return 1

# Add the namespace
$execute unless data storage tr:downloads $(user_id) run data modify storage tr:downloads $(user_id) set value {}
# Set the data
$data modify storage tr:downloads $(user_id).$(map_id) set value $(data)
$data modify storage tr:downloads $(user_id).$(map_id).id set value "$(user_id).$(map_id)"
$data modify storage tr:downloads $(user_id).$(map_id).path set value "$(user_id)/$(map_id)"
$data modify storage tr:downloads $(user_id).$(map_id).version set value {"$(version)":true,value:$(version)}
$data modify storage tr:downloads $(user_id).$(map_id).downloaded set value true
$data modify storage tr:downloads $(user_id).$(map_id).name set value "$(name)"

# Pull from download into storage, replacing an old version if it exists
$execute if data storage tr:settings arenas[{"id":"$(user_id).$(map_id)"}] run data modify storage tr:settings arenas[{"id":"$(user_id).$(map_id)"}] set from storage tr:downloads $(user_id).$(map_id)
$execute unless data storage tr:settings arenas[{"id":"$(user_id).$(map_id)"}] run data modify storage tr:settings arenas append from storage tr:downloads $(user_id).$(map_id)

# We successfully installed this map! (return 0)
return 0