kill @e[tag=advert]
summon interaction 9 137.5 -12 {Tags:["advert"], width: 1.5, height: 0.75, response: true}
summon item_display 9 138 -12 {brightness: { block: 15, sky: 15}, item: {id: "minecraft:stick", count: 1b, components: { item_model: "tr:advert"}}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, -0.1f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f]}, Tags: ["advert"] }
summon text_display 9 138 -12 {brightness: { block: 15, sky: 15}, alignment: "center", text:'[{"translate": "tr.text.ad.support"}]', transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.8f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, Tags: ["advert"] }
summon text_display 9 138 -12 {brightness: { block: 15, sky: 15}, alignment: "center", text:'[{"translate": "tr.text.ad.support2"}]', transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.3f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f]}, Tags: ["advert"] }

execute as @e[tag=advert] at @s run tp @s ~ ~ ~ 45 0