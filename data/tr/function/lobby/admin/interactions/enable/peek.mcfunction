data modify storage tr:tmp admin.display set value {}

execute if data block ~ ~ ~ item \
        run function tr:lobby/admin/interactions/enable/peek/one {nbt: "item"}
		
execute unless data storage tr:tmp admin.display.name \
        unless data storage tr:tmp admin.display.item \
        if data block ~ ~ ~ Items[{Slot:13b}] \
        unless data block ~ ~ ~ Items[{Slot:0b}] \
        run function tr:lobby/admin/interactions/enable/peek/one {nbt: "Items[{Slot:13b}]"}
		
execute unless data storage tr:tmp admin.display.name \
        unless data storage tr:tmp admin.display.item \
        if data block ~ ~ ~ Items \
        run function tr:lobby/admin/interactions/enable/peek/multiple {nbt: "Items"}

execute unless data storage tr:tmp admin.display.name \
        unless data storage tr:tmp admin.display.item \
		run function tr:lobby/admin/interactions/enable/peek/block_entity
