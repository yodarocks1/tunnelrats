$execute if data block ~ ~ ~ $(nbt).components."minecraft:custom_name" \
         run data modify storage tr:tmp admin.display.name.text \
         set from block ~ ~ ~ $(nbt).components."minecraft:custom_name"