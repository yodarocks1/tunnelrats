#>
# Takes a string of numbers and converts them to an integer. Does not protect from integer overflow.
# 
# @param input      a string of numbers to be converted
# 
# @returns the parsed number

$return $(input)
# $data merge storage util:sti {input:$(input)}
# return run data get storage util:sti input