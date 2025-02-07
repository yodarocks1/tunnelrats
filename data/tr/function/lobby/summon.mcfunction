kill @e[type=item_display,tag=lobby.text]
kill @e[type=text_display,tag=lobby.text]

# logo
summon item_display 11.5 143.5 0.5 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [1] }}}, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], translation: [0.0f, -0.5f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [16.0f, 4.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }

# how to
summon item_display -3 144 -14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [906] }}}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.0f, 2.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }

# team 1
summon item_display 4 145 14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [903] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 1.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display 4 144 14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [901] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.0f, 2.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
# team 2
summon item_display -10 145 14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [903] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 1.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display -10 144 14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [902] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.0f, 2.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
# leave
summon item_display -1 138.5 17.9 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [904] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon text_display -1 137.5 17.9 {text: '{"text":"LEAVE","font": "cmdpixel"}', background: 0, transformation: {left_rotation: [0.0f, -1.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
# spectate
summon text_display -5 137.9 17.9 {text: '[{"text":"👁"}]', alignment: "center", background: 0, transformation: {left_rotation: [0.0f, -1.0f, 0.0f, 0.0f], translation: [ 0.1f, -0.3f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [6.0f, 6.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display -5 137.5 17.9 {text: '[{"text":"SPECTATE","font": "cmdpixel"}]', background: 0, transformation: {left_rotation: [0.0f, -1.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}

# admin
summon item_display -17 147 0 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [905] }}}, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.0f, 2.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }

# credits
summon item_display -3 143 -38 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [907] }}}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 1.0f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }

## murals
# howto
summon item_display -8 140 -22 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [911] }}}, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [-0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display -8 140 -26 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [912] }}}, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [-0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display -8 140 -30 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [913] }}}, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [-0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display -8 140 -34 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [914] }}}, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [-0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display 2 140 -34 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [915] }}}, transformation: {left_rotation: [0.0f, -0.70710677f, 0.0f, -0.70710677f], translation: [0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display 2 140 -30 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [916] }}}, transformation: {left_rotation: [0.0f, -0.70710677f, 0.0f, -0.70710677f], translation: [0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display 2 140 -26 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [917] }}}, transformation: {left_rotation: [0.0f, -0.70710677f, 0.0f, -0.70710677f], translation: [0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display 2 140 -22 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [918] }}}, transformation: {left_rotation: [0.0f, -0.70710677f, 0.0f, -0.70710677f], translation: [0.49f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 2f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }

summon text_display -8 140.7 -22 {text:'[{"translate": "tr.text.howto.1"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], translation: [-0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display -8 140.7 -26 {text:'[{"translate": "tr.text.howto.2"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], translation: [-0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display -8 140.7 -30 {text:'[{"translate": "tr.text.howto.3"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], translation: [-0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display -8 140.7 -34 {text:'[{"translate": "tr.text.howto.4"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], translation: [-0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display 2 140.7 -34 {text:'[{"translate": "tr.text.howto.5"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display 2 140.7 -30 {text:'[{"translate": "tr.text.howto.6"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display 2 140.7 -26 {text:'[{"translate": "tr.text.howto.7"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}
summon text_display 2 140.7 -22 {text:'[{"translate": "tr.text.howto.8"}]', line_width: 240, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, -0.70710677f], translation: [0.48f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"]}

# team
summon item_display -3.0 142.5 14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [920] }}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.5f, 0.0f, 0.49f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.0f, 8f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }

# left & right
summon item_display -11.0 142.5 -14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [921] }}}, transformation: {left_rotation: [0.0f, -1.0f, 0.0f, 0.0f], translation: [2.0f, 0.5f, -0.49f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.0f, 8f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }
summon item_display 5.0 142.5 -14 {item: {count: 1b, id: "minecraft:stick", components: { custom_model_data: { floats: [922] }}}, transformation: {left_rotation: [0.0f, -1.0f, 0.0f, 0.0f], translation: [2.0f, 0.5f, -0.49f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.0f, 8f, 1.0f]}, billboard: "fixed", Tags: ["lobby.text"] }