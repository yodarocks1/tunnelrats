data modify storage tr:tmp arena_version set value {status:{}}
$execute if data storage tr:downloads $(user_id).$(map_id) \
         run data modify storage tr:tmp arena_version.old \
         set from storage tr:downloads $(user_id).$(map_id).version.value

# If we have already installed this version of this map, skip it (return 1) unless the version is 'dev' - then load it every time
data modify storage tr:tmp arena_version.status.no_change set value true
$execute if data storage tr:downloads $(user_id).$(map_id).version."$(version)" unless data storage tr:downloads $(user_id).$(map_id).version.dev run return 1

$data modify storage tr:tmp arena_version.new set value "$(version)"

# Add the namespace
$execute unless data storage tr:downloads $(user_id) run data modify storage tr:downloads $(user_id) set value {}
# Set the data
$data modify storage tr:downloads $(user_id).$(map_id) set value $(data)
$data modify storage tr:downloads $(user_id).$(map_id).reload_function set value $(reload_function)
$data modify storage tr:downloads $(user_id).$(map_id).base.x set from storage tr:downloads $(user_id).$(map_id).sections[0].x
$data modify storage tr:downloads $(user_id).$(map_id).base.y set from storage tr:downloads $(user_id).$(map_id).sections[0].y
$data modify storage tr:downloads $(user_id).$(map_id).base.z set from storage tr:downloads $(user_id).$(map_id).sections[0].z
$data modify storage tr:downloads $(user_id).$(map_id).id set value "$(user_id).$(map_id)"
$data modify storage tr:downloads $(user_id).$(map_id).path set value "$(user_id)/$(map_id)"
$execute if data storage tr:downloads $(user_id).$(map_id).on run data modify storage tr:downloads $(user_id).$(map_id).on.path set value "$(user_id)/$(map_id)"
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

# Replace in admin arena, if loaded
$execute if data storage tr:admin arena{"id":"$(user_id).$(map_id)"} run data modify storage tr:admin arena{"id":"$(user_id).$(map_id)"} set from storage tr:downloads $(user_id).$(map_id)
$execute if data storage tr:admin arena{"id":"$(user_id).$(map_id)"} run scoreboard players set #interaction tmp 0
$execute if data storage tr:admin arena{"id":"$(user_id).$(map_id)"} run execute if entity @s[tag=admin.arena.next] run function tr:lobby/admin/interactions/menu/next

$execute if data storage tr:downloads $(user_id).$(map_id).version.dev run data modify storage tr:tmp arena_version.dev set value true

# We successfully updated this map! (return 2)
execute if data storage tr:tmp arena_version.old run data modify storage tr:tmp arena_version.status.update set value true
execute if data storage tr:tmp announce_arena_version_update \
        if data storage tr:tmp arena_version.old \
        unless data storage tr:tmp arena_version.dev \
        run tellraw @a [ \
		  { \
		    "translate": "tr.text.datapack.update.1", \
		    "color": "green", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  }, { \
		    "translate": "tr.text.datapack.update.2", \
		    "color": "dark_purple", \
		    "italic": true, \
			"with": [{"nbt":"arena_version.old","storage":"tr:tmp"}, \
		             {"nbt":"arena_version.new","storage":"tr:tmp"}] \
		  }, { \
		    "translate": "tr.text.datapack.update.3", \
		    "color": "green" \
		  } \
		]
execute if data storage tr:tmp announce_arena_version_update \
        if data storage tr:tmp arena_version.old \
        if data storage tr:tmp arena_version.dev \
        run tellraw @a [ \
		  { \
		    "translate": "tr.text.datapack.update.dev.1", \
		    "color": "green", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  }, { \
		    "translate": "tr.text.datapack.update.dev.2", \
		    "color": "dark_purple", \
		    "italic": true, \
			"with": [{"nbt":"arena_version.old","storage":"tr:tmp"}, \
		             {"nbt":"arena_version.new","storage":"tr:tmp"}] \
		  }, { \
		    "translate": "tr.text.datapack.update.dev.3", \
		    "color": "green" \
		  }, { \
		    "translate": "tr.text.datapack.update.dev.explain", \
		    "color": "gray" \
		  } \
		]

execute if data storage tr:tmp arena_version.old run return 2

# We successfully *installed* this map! (return 3)
data modify storage tr:tmp arena_version.status.install set value true
execute if data storage tr:tmp announce_arena_version_update \
        run tellraw @a [ \
		  { \
		    "translate": "tr.text.datapack.install.1", \
		    "color": "green", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  }, { \
		    "translate": "tr.text.datapack.install.2", \
		    "color": "dark_purple", \
		    "italic": true, \
			"with": [{"nbt":"arena_version.new","storage":"tr:tmp"}] \
		  }, { \
		    "translate": "tr.text.datapack.install.3", \
		    "color": "green" \
		  } \
		]
return 3