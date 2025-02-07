# If we have already installed this version of this map, skip it (return 1) unless the version is 'dev' - then load it every time
$execute if data storage tr:downloads $(user_id).$(map_id).version."$(version)" unless data storage tr:downloads $(user_id).$(map_id).version.dev run return 1

# Add the namespace
$execute unless data storage tr:downloads $(user_id) run data modify storage tr:downloads $(user_id) set value {}
# Set the data
$data modify storage tr:downloads $(user_id).$(map_id) set value $(data)
$data modify storage tr:downloads $(user_id).$(map_id).base.x set from storage tr:downloads $(user_id).$(map_id).sections[0].x
$data modify storage tr:downloads $(user_id).$(map_id).base.y set from storage tr:downloads $(user_id).$(map_id).sections[0].y
$data modify storage tr:downloads $(user_id).$(map_id).base.z set from storage tr:downloads $(user_id).$(map_id).sections[0].z
$data modify storage tr:downloads $(user_id).$(map_id).id set value "$(user_id).$(map_id)"
$data modify storage tr:downloads $(user_id).$(map_id).on.path set value "$(user_id)/$(map_id)"
$execute if data storage tr:downloads $(user_id).$(map_id).on.tick run data modify storage tr:downloads $(user_id).$(map_id).on.tick.path set value "$(user_id)/$(map_id)"
$execute if data storage tr:downloads $(user_id).$(map_id).on.ready run data modify storage tr:downloads $(user_id).$(map_id).on.ready.path set value "$(user_id)/$(map_id)"
$data modify storage tr:downloads $(user_id).$(map_id).version set value {"$(version)":true,value:$(version)}
$data modify storage tr:downloads $(user_id).$(map_id).downloaded set value true
$data modify storage tr:downloads $(user_id).$(map_id).name set value "$(name)"

$data modify storage tr:tmp id_and_inset set value {id:"$(user_id).$(map_id)",inset:0}
$execute if data storage tr:downloads $(user_id).$(map_id).base_inset run data modify storage tr:tmp id_and_inset.inset set from storage tr:downloads $(user_id).$(map_id).base_inset
$execute store result storage tr:downloads $(user_id).$(map_id).totalX int 1 run function tr:data_update/sum_x with storage tr:tmp id_and_inset

# Pull from download into storage, replacing an old version if it exists
$execute if data storage tr:settings arenas[{"id":"$(user_id).$(map_id)"}] run data modify storage tr:settings arenas[{"id":"$(user_id).$(map_id)"}] set from storage tr:downloads $(user_id).$(map_id)
$execute unless data storage tr:settings arenas[{"id":"$(user_id).$(map_id)"}] run data modify storage tr:settings arenas append from storage tr:downloads $(user_id).$(map_id)

# We successfully installed this map! (return 0)
return 0