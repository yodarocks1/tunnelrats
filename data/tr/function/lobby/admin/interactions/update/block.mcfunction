scoreboard players operation #p1 tmp = @s p
scoreboard players operation #p2 tmp = @s p

scoreboard players operation #p1 tmp /= 100 const
scoreboard players operation #p2 tmp %= 100 const

execute if score #p1 tmp matches ..9 if score #p2 tmp matches ..9 run data modify entity @s text set value '["0",{"score":{"name":"#p1","objective":"tmp"}},".0",{"score":{"name":"#p2","objective":"tmp"}}, " %"]'
execute if score #p1 tmp matches 10.. if score #p2 tmp matches ..9 run data modify entity @s text set value '["",{"score":{"name":"#p1","objective":"tmp"}},".0",{"score":{"name":"#p2","objective":"tmp"}}, " %"]'
execute if score #p1 tmp matches ..9 if score #p2 tmp matches 10.. run data modify entity @s text set value '["0",{"score":{"name":"#p1","objective":"tmp"}},".",{"score":{"name":"#p2","objective":"tmp"}}, " %"]'
execute if score #p1 tmp matches 10.. if score #p2 tmp matches 10.. run data modify entity @s text set value '["",{"score":{"name":"#p1","objective":"tmp"}},".",{"score":{"name":"#p2","objective":"tmp"}}, " %"]'

scoreboard players operation #total tmp = @e[tag=admin.base,limit=1,sort=nearest] x
scoreboard players operation #total tmp *= @e[tag=admin.base,limit=1,sort=nearest] y
scoreboard players operation #total tmp *= @e[tag=admin.base,limit=1,sort=nearest] z
scoreboard players operation #total tmp *= @s p
scoreboard players operation #total tmp /= 10000 const
data modify entity @e[tag=admin.value,type=text_display,limit=1,sort=nearest] text set value '[{"translate":"tr.text.admin.slice.percentage", "with":[{"score":{"name": "#total", "objective": "tmp"}}]}]'