function tr:game/ending/stats/generic {obj: "kills", color: "dark_red"}

execute if score #max tmp matches 0 run schedule function tr:game/ending/stats/deaths 1 replace
execute unless score #max tmp matches 0 run schedule function tr:game/ending/stats/deaths 5s replace