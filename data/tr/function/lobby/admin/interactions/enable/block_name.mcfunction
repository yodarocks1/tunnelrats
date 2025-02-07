# Use run return run so only one runs
data merge entity @s {alignment:"center"}
execute if data block ~ ~ ~ CustomName \
        run return \
        run data modify entity @s text set from block ~ ~ ~ CustomName
execute if block ~ ~ ~ minecraft:decorated_pot \
        if data block ~ ~ ~ item.components."minecraft:custom_name" \
		run return \
        run data modify entity @s text set from block ~ ~ ~ item.components."minecraft:custom_name"
execute if data block ~ ~ ~ Items[0].components."minecraft:custom_name" \
		run return \
        run data modify entity @s text set from block ~ ~ ~ Items[0].components."minecraft:custom_name"
execute if data block ~ ~ ~ Items[0].components."minecraft:stored_enchantments" \
        run return \
		run data modify entity @s text set from block ~ ~ ~ Items[0].components."minecraft:stored_enchantments".levels