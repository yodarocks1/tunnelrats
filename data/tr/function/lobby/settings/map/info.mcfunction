execute if data storage tr:settings arena.info \
        unless data storage tr:settings arena.version \
        run tellraw @p[tag=interactor] ["", {"nbt":"arena.name","storage":"tr:settings","color":"green"}, ": ", {"nbt":"arena.info","storage":"tr:settings","color":"gold","interpret": true}]
execute if data storage tr:settings arena.info \
        if data storage tr:settings arena.version \
        run tellraw @p[tag=interactor] ["", {"nbt":"arena.name","storage":"tr:settings","color":"green"}, " (", {"nbt":"arena.version","storage":"tr:settings","color":"dark_purple","italic": true}, "): ", {"nbt":"arena.info","storage":"tr:settings","color":"gold","interpret": true}]
