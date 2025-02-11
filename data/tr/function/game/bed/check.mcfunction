$execute if entity @s[team=team1] run function tr:game/bed/check_exists {x:$(SpawnX),y:$(SpawnY),z:$(SpawnZ),team:1}
$execute if entity @s[team=team2] run function tr:game/bed/check_exists {x:$(SpawnX),y:$(SpawnY),z:$(SpawnZ),team:2}

# check_obstructed should not be called every tick - it is somewhat expensive to run
# check_obstructed is currently W.I.P.
#$execute if entity @s[team=team1] run function tr:game/bed/check_obstructed {SpawnX:$(SpawnX),SpawnY:$(SpawnY),SpawnZ:$(SpawnZ)}