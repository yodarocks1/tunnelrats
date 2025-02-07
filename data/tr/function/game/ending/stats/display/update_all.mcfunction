# cleanup
kill @e[tag=tr.tmp_name]
summon armor_stand 0 160 0 {Tags:["tr.tmp_name"], HandItems:[{id:"minecraft:stone",count:1b},{}]}

# update text displays
kill @e[tag=stat.display]
function tr:game/ending/stats/display/update_one { obj: "deaths.total", x: 9.5, y: 138, z: -13.5, reset: 0, suffix: "", scale: 1}
function tr:game/ending/stats/display/update_one { obj: "deaths.round", x: 11.5, y: 138, z: -11.5, reset: 1, suffix: "", scale: 1}
function tr:game/ending/stats/display/update_one { obj: "wins", x: 10.5, y: 141, z: -12.5, reset: 0, suffix: "", scale: 1 }
function tr:game/ending/stats/display/update_one { obj: "kills.total", x: 9.5, y: 138, z: 14.5, reset: 0, suffix: "", scale: 1 }
function tr:game/ending/stats/display/update_one { obj: "kills.round", x: 11.5, y: 138, z: 12.5, reset: 1, suffix: "", scale: 1 }
function tr:game/ending/stats/display/update_one { obj: "wins", x: 10.5, y: 141, z: 13.5, reset: 0, suffix: "", scale: 1 }
function tr:game/ending/stats/display/update_one { obj: "dmg_taken.total", x: -14.5, y: 138, z: -13.5, reset: 0, suffix: " ❤", scale: 0.05 }
function tr:game/ending/stats/display/update_one { obj: "dmg_taken.round", x: -16.5, y: 138, z: -11.5, reset: 1, suffix: " ❤", scale: 0.05 }
function tr:game/ending/stats/display/update_one { obj: "wins", x: -15.5, y: 141, z: -12.5, reset: 0, suffix: "", scale: 1 }
function tr:game/ending/stats/display/update_one { obj: "dmg_dealt.total", x: -14.5, y: 138, z: 14.5, reset: 0, suffix: " ❤", scale: 0.05 }
function tr:game/ending/stats/display/update_one { obj: "dmg_dealt.round", x: -16.5, y: 138, z: 12.5, reset: 1, suffix: " ❤", scale: 0.05 }
function tr:game/ending/stats/display/update_one { obj: "wins", x: -15.5, y: 141, z: 13.5, reset: 0, suffix: "", scale: 1 }