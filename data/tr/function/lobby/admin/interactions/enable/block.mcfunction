summon interaction ~-0.07 ~.7 ~0.9 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_1000"], response: true}
summon interaction ~-0.07 ~.7 ~0.7 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_100"], response: true}
summon interaction ~-0.07 ~.7 ~0.5 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_10"], response: true}
summon interaction ~-0.07 ~.7 ~0.3 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.plus_1"], response: true}
summon interaction ~-0.07 ~.2 ~0.9 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_1000"], response: true}
summon interaction ~-0.07 ~.2 ~0.7 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_100"], response: true}
summon interaction ~-0.07 ~.2 ~0.5 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_10"], response: true}
summon interaction ~-0.07 ~.2 ~0.3 {width: 0.15f, height: 0.15f, Tags:["admin.interaction","admin.minus_1"], response: true}

summon item_display ~ ~.7 ~0.9 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1010] }}}, Tags:["admin.interaction","admin.plus_1000"]}
summon item_display ~ ~.7 ~0.7 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1010] }}}, Tags:["admin.interaction","admin.plus_100"]}
summon item_display ~ ~.7 ~0.5 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1010] }}}, Tags:["admin.interaction","admin.plus_10"]}
summon item_display ~ ~.7 ~0.3 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1010] }}}, Tags:["admin.interaction","admin.plus_1"]}
summon item_display ~ ~.2 ~0.9 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1012] }}}, Tags:["admin.interaction","admin.minus_1000"]}
summon item_display ~ ~.2 ~0.7 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1012] }}}, Tags:["admin.interaction","admin.minus_100"]}
summon item_display ~ ~.2 ~0.5 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1012] }}}, Tags:["admin.interaction","admin.minus_10"]}
summon item_display ~ ~.2 ~0.3 {item:{id:"minecraft:stick",count:1b,components:{custom_model_data: { floats: [1012] }}}, Tags:["admin.interaction","admin.minus_1"]}

execute as @e[type=item_display,distance=..1.5,tag=admin.interaction] run data merge entity @s {transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [0.011f, 0.075f, 0.0f], scale: [0.15f, 0.15f, 0.15f]}}

scoreboard players operation #total tmp = @e[tag=admin.base,limit=1,sort=nearest] x
scoreboard players operation #total tmp *= @e[tag=admin.base,limit=1,sort=nearest] y
scoreboard players operation #total tmp *= @e[tag=admin.base,limit=1,sort=nearest] z
scoreboard players operation #total tmp *= @s p
scoreboard players operation #total tmp /= 10000 const
summon text_display ~ ~.1 ~0.51 {text:'[{"translate":"tr.text.admin.slice.percentage", "with":[{"score":{"name": "#total", "objective": "tmp"}}]}]',transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], translation: [0.02f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.3f, 0.3f, 0.3f]}, Tags:["admin.interaction","admin.value"]}