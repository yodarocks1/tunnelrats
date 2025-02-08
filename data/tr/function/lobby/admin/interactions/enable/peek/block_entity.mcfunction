# Check for a name
function tr:lobby/admin/interactions/enable/peek/get/text/block_name

# If we found one, make a text_display and display it
execute if data storage tr:tmp admin.display.name \
		positioned ~0.5 ~0.7 ~0.01 \
		summon minecraft:text_display \
		run function tr:lobby/admin/interactions/enable/peek/run/load_text_display \
		with storage tr:tmp admin.display