summon interaction ~-.07 ~.6 ~0.08 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_x_10"], response: true}
summon interaction ~-.07 ~.6 ~0.25 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_x"], response: true}
summon interaction ~-.07 ~.425 ~0.08 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_y_10"], response: true}
summon interaction ~-.07 ~.425 ~0.25 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_y"], response: true}
summon interaction ~-.07 ~.25 ~0.08 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_z_10"], response: true}
summon interaction ~-.07 ~.25 ~0.25 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_z"], response: true}
summon interaction ~-.07 ~.6 ~0.92 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_x_10"], response: true}
summon interaction ~-.07 ~.6 ~0.75 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_x"], response: true}
summon interaction ~-.07 ~.425 ~0.92 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_y_10"], response: true}
summon interaction ~-.07 ~.425 ~0.75 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_y"], response: true}
summon interaction ~-.07 ~.25 ~0.92 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_z_10"], response: true}
summon interaction ~-.07 ~.25 ~0.75 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_z"], response: true}

summon item_display ~ ~.6 ~0.08 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1011] }}}, Tags:["admin.interaction","admin.plus_x_10"]}
summon item_display ~ ~.6 ~0.25 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1010] }}}, Tags:["admin.interaction","admin.plus_x"]}
summon item_display ~ ~.425 ~0.08 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1011] }}}, Tags:["admin.interaction","admin.plus_y_10"]}
summon item_display ~ ~.425 ~0.25 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1010] }}}, Tags:["admin.interaction","admin.plus_y"]}
summon item_display ~ ~.25 ~0.08 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1011] }}}, Tags:["admin.interaction","admin.plus_z_10"]}
summon item_display ~ ~.25 ~0.25 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1010] }}}, Tags:["admin.interaction","admin.plus_z"]}
summon item_display ~ ~.6 ~0.92 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1013] }}}, Tags:["admin.interaction","admin.minus_x_10"]}
summon item_display ~ ~.6 ~0.75 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1012] }}}, Tags:["admin.interaction","admin.minus_x"]}
summon item_display ~ ~.425 ~0.92 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1013] }}}, Tags:["admin.interaction","admin.minus_y_10"]}
summon item_display ~ ~.425 ~0.75 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1012] }}}, Tags:["admin.interaction","admin.minus_y"]}
summon item_display ~ ~.25 ~0.92 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1013] }}}, Tags:["admin.interaction","admin.minus_z_10"]}
summon item_display ~ ~.25 ~0.75 {item:{id:"minecraft:stick", count:1b, components: {custom_model_data: { floats: [1012] }}}, Tags:["admin.interaction","admin.minus_z"]}

execute as @e[type=item_display,distance=..1.5,tag=admin.interaction] run data merge entity @s {transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [0.011f, 0.075f, 0.0f], scale: [0.15f, 0.15f, 0.15f]}}

scoreboard players operation #total tmp = @s x
scoreboard players operation #total tmp *= @s y
scoreboard players operation #total tmp *= @s z
summon text_display ~ ~.1 ~0.51 {text:'[{"translate":"tr.text.admin.slice.size", "with":[{"score":{"name": "#total", "objective": "tmp"}}]}]',transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], translation: [0.02f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.3f, 0.3f, 0.3f]}, Tags:["admin.interaction","admin.value"]}