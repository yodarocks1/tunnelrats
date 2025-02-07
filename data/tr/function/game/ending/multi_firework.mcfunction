

execute if score #winningTeam tmp matches 0 run data merge entity @s {FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"small_ball",colors:[I;16711680]}]}}}}
execute if score #winningTeam tmp matches 1 run data merge entity @s {FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"small_ball",colors:[I;16761856]}]}}}}
execute if score #winningTeam tmp matches 2 run data merge entity @s {FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"small_ball",colors:[I;65293]}]}}}}
execute if score #winningTeam tmp matches 3 run data merge entity @s {FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"small_ball",colors:[I;1638655]}]}}}}
execute if score #winningTeam tmp matches 4 run data merge entity @s {FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"small_ball",colors:[I;11403519]}]}}}}
execute if score #winningTeam tmp matches 5 run data merge entity @s {FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{explosions:[{shape:"small_ball",colors:[I;16711892]}]}}}}

execute store result score @s tmp run data get entity @s UUID[0]

scoreboard players operation @s tmp %= 20 const
execute store result entity @s Lifetime int 1 run scoreboard players add @s tmp 5