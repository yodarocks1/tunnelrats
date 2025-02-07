#>
# Takes a string of numbers and converts them to a float.
# 
# @param input      a string of numbers to be converted
# 
# @output the parsed float is stored in tr:tmp util.float

$data modify storage tr:tmp util.float set value $(input)d
# $data merge storage util:sti {input:$(input)}
# return run data get storage util:sti input