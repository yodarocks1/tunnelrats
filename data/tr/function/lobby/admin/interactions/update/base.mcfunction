data modify entity @s text set value '[{"translate": "tr.text.admin.baseblock","with":[{"score":{"name":"@s","objective":"x"}},{"score":{"name":"@s","objective":"y"}},{"score":{"name":"@s","objective":"z"}}]}]'

execute if score #loading tmp matches 0 run function tr:lobby/admin/update_preview

scoreboard players operation #total tmp = @s x
scoreboard players operation #total tmp *= @s y
scoreboard players operation #total tmp *= @s z
data modify entity @e[tag=admin.value,type=text_display,limit=1,sort=nearest] text set value '[{"translate":"tr.text.admin.slice.size", "with":[{"score":{"name": "#total", "objective": "tmp"}}]}]'