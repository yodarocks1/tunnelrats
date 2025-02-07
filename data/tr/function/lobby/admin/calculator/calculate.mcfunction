# expects to be run from the position of the top cherry sign

data modify storage tr:tmp calc.input set string block ~ ~ ~1 front_text.messages[1] 9 -2
execute store result score #x tmp run function util:string_to_int with storage tr:tmp calc
data modify storage tr:tmp calc.input set string block ~ ~ ~1 front_text.messages[2] 9 -2
execute store result score #y tmp run function util:string_to_int with storage tr:tmp calc
data modify storage tr:tmp calc.input set string block ~ ~ ~1 front_text.messages[3] 9 -2
execute store result score #z tmp run function util:string_to_int with storage tr:tmp calc
data modify storage tr:tmp calc.input set string block ~ ~-1 ~1 front_text.messages[1] 9 -2
function util:string_to_double with storage tr:tmp calc
execute store result score #p tmp run data get storage tr:tmp util.float 100

# tellraw @a [{"score":{"name": "#x","objective": "tmp"}}, " ",{"score":{"name": "#y","objective": "tmp"}}, " ",{"score":{"name": "#z","objective": "tmp"}}, " ",{"score":{"name": "#p","objective": "tmp"}}]

scoreboard players operation #total tmp = #x tmp
scoreboard players operation #total tmp *= #y tmp
scoreboard players operation #total tmp *= #z tmp

scoreboard players operation #per tmp = #total tmp
scoreboard players operation #per tmp *= #p tmp
scoreboard players operation #per tmp /= 100 const
scoreboard players operation #per2 tmp = #per tmp
scoreboard players operation #per tmp /= 100 const
scoreboard players operation #per2 tmp %= 100 const

scoreboard players operation #p2 tmp = #p tmp
scoreboard players operation #p tmp /= 100 const
scoreboard players operation #p2 tmp %= 100 const

# tellraw @a [{"score":{"name": "#total","objective": "tmp"}}, ", ",{"score":{"name": "#per","objective": "tmp"}}, ".",{"score":{"name": "#per2","objective": "tmp"}}]
data modify block ~ ~ ~ front_text.messages[1] set value '{"score":{"name": "#total","objective": "tmp"}}'
execute if score #p2 tmp matches ..9 run data modify block ~ ~-1 ~ front_text.messages[0] set value '[{"score":{"name": "#p","objective": "tmp"}},".0",{"score":{"name": "#p2","objective": "tmp"}}, "% of slice ="]'
execute if score #p2 tmp matches 10.. run data modify block ~ ~-1 ~ front_text.messages[0] set value '[{"score":{"name": "#p","objective": "tmp"}},".",{"score":{"name": "#p2","objective": "tmp"}}, "% of slice ="]'
data modify block ~ ~-1 ~ front_text.messages[1] set value '[{"score":{"name": "#per","objective": "tmp"}}, ".",{"score":{"name": "#per2","objective": "tmp"}}]'