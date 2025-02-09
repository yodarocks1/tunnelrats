$data modify storage tr:tmp arena_version.result_$(result) set value true
$data modify storage tr:tmp arena_version.success_$(success) set value true

# Success 0: Failed to install
execute if data storage tr:tmp arena_version.success_0 \
        run return run tellraw @p[tag=interactor] [ \
		  { \
		    "translate": "tr.text.admin.reload.call_failed", \
		    "color": "red", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  } \
		]

# Result 0: No return value
execute if data storage tr:tmp arena_version.result_0 \
        run tellraw @p[tag=interactor] [ \
		  { \
		    "translate": "tr.text.admin.reload.call_unknown", \
		    "color": "red", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  } \
		]

# Result 1: Skipped (versions match)
execute if data storage tr:tmp arena_version.result_1 \
        run tellraw @p[tag=interactor] [ \
		  { \
		    "translate": "tr.text.admin.reload.same_version.1", \
		    "color": "gray", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  }, { \
		    "translate": "tr.text.admin.reload.same_version.2", \
		    "color": "dark_purple", \
		    "italic": true, \
		    "with": [{"nbt":"arena_version.old","storage":"tr:tmp"}] \
		  }, { \
		    "translate": "tr.text.admin.reload.same_version.3", \
		    "color": "gray" \
		  } \
		]

# Result 2: Updated successfully
execute if data storage tr:tmp arena_version.result_2 \
        run tellraw @p[tag=interactor] [ \
		  { \
		    "translate": "tr.text.admin.reload.new_version.1", \
		    "color": "green", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  }, { \
		    "translate": "tr.text.admin.reload.new_version.2", \
		    "color": "dark_purple", \
		    "italic": true, \
			"with": [{"nbt":"arena_version.old","storage":"tr:tmp"}, \
		             {"nbt":"arena_version.new","storage":"tr:tmp"}] \
		  }, { \
		    "translate": "tr.text.admin.reload.new_version.3", \
		    "color": "green" \
		  } \
		]

# Result 3: Installed new
execute if data storage tr:tmp arena_version.result_2 \
        run tellraw @p[tag=interactor] [ \
		  { \
		    "translate": "tr.text.admin.reload.installed_new.1", \
		    "color": "red", \
			"with": [{"nbt":"arena.name","storage":"tr:admin"}] \
		  }, { \
		    "translate": "tr.text.admin.reload.installed_new.2", \
		    "color": "dark_purple", \
		    "italic": true, \
			"with": [{"nbt":"arena_version.new","storage":"tr:tmp"}] \
		  }, { \
		    "translate": "tr.text.admin.reload.installed_new.3", \
		    "color": "red" \
		  } \
		]