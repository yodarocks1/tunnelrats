function tr:lobby/admin/interactions/menu/check/disable
tag @s add disabled

kill @e[type=marker,tag=admin.sign]
summon marker ~ ~ ~-1 {Tags:["admin.sign"]}
setblock ~ ~ ~-1 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"NewMapNameHere"}', '{"text":""}', '{"text":""}', '{"text":""}']}}
# setblock ~ ~ ~-1 oak_wall_sign[facing=north]{front_text:{messages:['{"translate":"tr.text.admin.new_name_here"}', '{"text":""}', '{"text":""}', '{"text":""}']}}

summon interaction ~.5 ~-1 ~ {response:1b,Tags:["admin.confirm","admin.menu"],width: 0.75f, height: 0.75f}
summon interaction ~-.5 ~-1 ~ {response:1b,Tags:["admin.cancel","admin.menu"],width: 0.75f, height: 0.75f}

summon text_display ~.5 ~-.625 ~-.4 {alignment:"center", text:'[{"translate": "tr.text.admin.confirm"}]', line_width: 50, shadow: true, background: 0, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, -0.4f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7f, 0.7f, 0.7f]}, Tags: ["admin.menu", "admin.confirm"]}
summon text_display ~-.5 ~-.625 ~-.4 {alignment:"center", text:'[{"translate": "tr.text.admin.cancel"}]', line_width: 50, shadow: true, background: 0, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, -0.4f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7f, 0.7f, 0.7f]}, Tags: ["admin.menu", "admin.cancel"]}

summon item_display ~.5 ~-.625 ~-.4 {brightness: { block: 15, sky: 15}, item: {id: "minecraft:stick", count: 1b, components: { custom_model_data: { floats: [1028] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, Tags: ["admin.menu", "admin.confirm"] }
summon item_display ~-.5 ~-.625 ~-.4 {brightness: { block: 15, sky: 15}, item: {id: "minecraft:stick", count: 1b, components: { custom_model_data: { floats: [1029] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, Tags: ["admin.menu", "admin.cancel"] }
