#>
## Converts Base64 string to Binary string
#
# @param input      The input string
# 
# @output the output can be found in the "b64:bin output" storage as a string

$data modify storage b64:bin input set value "$(input)"
data modify storage b64:bin in set from storage b64:bin input

data modify storage b64:bin output set value ""
data modify storage b64:bin storage set value "b64:bin"

scoreboard objectives add b64.tmp dummy

execute store result score length b64.tmp run data get storage b64:bin input
execute if score length b64.tmp matches 1.. summon area_effect_cloud run function base64:convert/to_binary


scoreboard objectives remove b64.tmp
tellraw @s [{"nbt":"input","storage": "b64:bin"}, " -> ", {"nbt":"output","storage": "b64:bin"}]