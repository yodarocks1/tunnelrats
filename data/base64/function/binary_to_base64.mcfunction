#>
## Converts Binary string to Base64 string
#
# @param input      The input string
# 
# @output the output can be found in the "b64:b64 output" storage as a string

$data modify storage b64:b64 input set value "$(input)"
data modify storage b64:b64 in set from storage b64:b64 input

data modify storage b64:b64 output set value ""
data modify storage b64:b64 storage set value "b64:b64"

scoreboard objectives add b64.tmp dummy

execute store result score length b64.tmp run data get storage b64:b64 input
execute if score length b64.tmp matches 1.. summon area_effect_cloud run function base64:convert/to_base64


scoreboard objectives remove b64.tmp
tellraw @s [{"nbt":"input","storage": "b64:b64"}, " -> ", {"nbt":"output","storage": "b64:b64"}]
