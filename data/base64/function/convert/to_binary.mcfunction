execute store success score #s b64.tmp run data modify storage b64:bin nextBlock set string storage b64:bin in 0 1
data modify storage b64:bin in set string storage b64:bin in 1

data modify storage b64:shared tag set from storage b64:bin nextBlock

function base64:convert/add_tag with storage b64:shared
function base64:convert/tag_to_binary
function base64:convert/remove_tag with storage b64:shared

function base64:convert/combine_output_with_block with storage b64:bin

scoreboard players remove length b64.tmp 1
execute if score length b64.tmp matches 1.. run function base64:convert/to_binary