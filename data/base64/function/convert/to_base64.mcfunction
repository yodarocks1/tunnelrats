execute store success score #s b64.tmp run data modify storage b64:b64 nextBlock set string storage b64:b64 in 0 6
execute if score #s b64.tmp matches 0 run data modify storage b64:b64 nextBlock set from storage b64:b64 in
data modify storage b64:b64 in set string storage b64:b64 in 6

execute store result score sectionLength b64.tmp run data get storage b64:b64 nextBlock
execute if score sectionLength b64.tmp matches ..5 run function base64:convert/pad_to_base64 with storage b64:b64

data modify storage b64:shared tag set from storage b64:b64 nextBlock

function base64:convert/add_tag with storage b64:shared
function base64:convert/tag_to_base64
function base64:convert/remove_tag with storage b64:shared

function base64:convert/combine_output_with_block with storage b64:b64

scoreboard players remove length b64.tmp 6
execute if score length b64.tmp matches 1.. run function base64:convert/to_base64