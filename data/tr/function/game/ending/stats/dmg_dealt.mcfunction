function tr:game/ending/stats/generic {obj: "dmg_dealt", color: "#C2185B"}

execute if score #max tmp matches 0 run schedule function tr:game/ending/stats/dmg_taken 1 replace
execute unless score #max tmp matches 0 run schedule function tr:game/ending/stats/dmg_taken 5s replace