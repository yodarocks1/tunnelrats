function tr:game/ending/stats/generic {obj: "deaths", color: "red"}

execute if score #max tmp matches 0 run schedule function tr:game/ending/stats/dmg_dealt 1 replace
execute unless score #max tmp matches 0 run schedule function tr:game/ending/stats/dmg_dealt 5s replace