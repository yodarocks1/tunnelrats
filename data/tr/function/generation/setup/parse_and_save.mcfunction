function tr:generation/setup/parse

# save to chosen name
# data modify storage tr:tmp new.name set string block ~1 ~-1 ~1 front_text.messages[1] 1 -1
function tr:generation/setup/save with storage tr:tmp new

# copy for dirty doublecheck
clone -32 138 -9 -32 149 9 -32 152 -9