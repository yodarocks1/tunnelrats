$data merge entity @s {block_state:{Name:"red_bed"},Tags:["preview"],transformation:{scale:[$(scale)f, $(scale)f, $(scale)f], translation:[$(scale_half)f,$(scale_half)f,0.0f], left_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #x tmp

execute store result score #x2 tmp run data get entity @s transformation.scale[0] 1000
scoreboard players operation #x tmp -= #x2 tmp