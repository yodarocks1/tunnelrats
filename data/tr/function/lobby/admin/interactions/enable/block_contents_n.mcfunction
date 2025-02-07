# Use run return run so only one runs
data modify entity @s transformation.translation set value [0.02f,-0.02f,0.0f]
execute if data block ~ ~ ~ CustomName \
        run data modify entity @s transformation.translation set value [0.02f, 0.28f, 0.0f]
execute if block ~ ~ ~ minecraft:decorated_pot \
		run return 0
execute if data block ~ ~ ~ Items[0].components."minecraft:custom_name" \
        run data modify entity @s transformation.translation set value [0.02f, 0.28f, 0.0f]
$execute if data block ~ ~ ~ Items[$(id)] \
		run return \
        run data modify entity @s item set from block ~ ~ ~ Items[$(id)]
		