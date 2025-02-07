title @s actionbar ["",{"color":"gold", "translate":"tr.title.credits.buttons", "with": [{"score":{"name": "#buttons", "objective": "credits"}}, "6"]}]

execute unless entity @s[tag=in_credits] run give @s stick[custom_data={return: 1b}, custom_model_data={floats: [1100]}, item_name='{"translate": "tr.text.credits.return.name"}',consumable={consume_seconds:1, animation: "block", sound:"block.respawn_anchor.charge", has_consume_particles: false}]

tag @s add in_credits