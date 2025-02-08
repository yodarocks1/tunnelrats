# Check for a name in this order
function tr:lobby/admin/interactions/enable/peek/get/text/block_name
		$execute unless data storage tr:tmp admin.display.name run \
function tr:lobby/admin/interactions/enable/peek/get/text/item_name {nbt: "$(nbt)"}
        $execute unless data storage tr:tmp admin.displayname run \
function tr:lobby/admin/interactions/enable/peek/get/text/stored_enchantments {nbt: "$(nbt)"}

# If we found one, make a text_display and display it
execute if data storage tr:tmp admin.display.name \
		positioned ~0.5 ~0.7 ~0.01 \
		summon minecraft:text_display \
		run function tr:lobby/admin/interactions/enable/peek/run/load_text_display \
		with storage tr:tmp admin.display



# Check for an item
$function tr:lobby/admin/interactions/enable/peek/get/item {nbt: "$(nbt)"}

# If we found one, make an item_display and display it
execute if data storage tr:tmp admin.display.item \
        positioned ~0.5 ~0.8 ~0.01 \
		summon minecraft:item_display \
		run function tr:lobby/admin/interactions/enable/peek/run/load_item_display \
		with storage tr:tmp admin.display