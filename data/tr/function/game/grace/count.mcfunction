$execute store result bossbar tr:grace.team$(team) value if score #grace_team$(team) timer matches 1.. run scoreboard players remove #grace_team$(team) timer 1

scoreboard players operation #min tmp = #grace_team$(team) timer
scoreboard players operation #sec tmp = #grace_team$(team) timer
scoreboard players add #sec tmp 20
scoreboard players add #min tmp 20
scoreboard players operation #min tmp /= 1200 const
scoreboard players operation #sec tmp /= 20 const
scoreboard players operation #sec tmp %= 60 const

$execute if score #grace_team$(team) timer matches 0 run effect give @a[team=team$(team)] wither 1 1 false