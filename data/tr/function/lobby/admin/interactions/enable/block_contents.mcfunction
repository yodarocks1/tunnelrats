# Use run return run so only one runs
data modify entity @s transformation.translation set value [0.02f,0.0f,0.0f]
execute if data block ~ ~ ~ CustomName \
        run data modify entity @s transformation.translation set value [-0.1f, 0.3f, 0.0f]
execute if block ~ ~ ~ minecraft:decorated_pot \
		if data block ~ ~ ~ item.components."minecraft:custom_name" \
        run data modify entity @s transformation.translation set value [-0.1f, 0.3f, 0.0f]
execute if block ~ ~ ~ minecraft:decorated_pot \
        if data block ~ ~ ~ item \
		run return \
        run data modify entity @s item set from block ~ ~ ~ item
execute if data block ~ ~ ~ Items[0].components."minecraft:custom_name" \
        run data modify entity @s transformation.translation set value [-0.1f, 0.3f, 0.0f]
execute if data block ~ ~ ~ Items[0] \
		run return \
        run data modify entity @s item set from block ~ ~ ~ Items[0]
execute if data block ~ ~ ~ Items \
		run return \
		run data modify entity @s item set value {id:"minecraft:structure_void"}