$spreadplayers $(spreadX) 0 0.1 3 under 130 false @a[team=team1]
$spreadplayers -$(spreadX) 0 0.1 3 under 130 false @a[team=team2]

$execute as @a[team=team1] at @s run tp @s ~ ~ ~ facing $(spreadX) -2 0
$execute as @a[team=team2] at @s run tp @s ~ ~ ~ facing -$(spreadX) -2 0
