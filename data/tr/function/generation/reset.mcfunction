data modify storage tr:settings arenas append value {name: "reset_empty_long_string", totalX: 2, base: {x: 2, y: 1, z: 1}, sections: [{x:2,y:1,z:1,blocks: [{id: "minecraft:bedrock"}]}]}
data modify storage tr:settings arena.name set value "reset_empty_long_string"

# scoreboard players set #previousMaxX tmp 120
function tr:generation/check_start
function tr:generation/start

data remove storage tr:settings arenas[{name: "reset_empty_long_string"}]