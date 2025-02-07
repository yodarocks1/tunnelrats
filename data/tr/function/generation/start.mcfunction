# check what block is to +X of where this function is run from and choose a filler material based on that.
# debug only
# scoreboard players set #baseBlock tmp 0
# execute if block ~1 ~ ~ barrier run scoreboard players set #baseBlock tmp 1
# execute if block ~1 ~ ~ bedrock run scoreboard players set #baseBlock tmp 2
scoreboard players set #baseBlock tmp 2

# actually run generation
scoreboard players set #currentX tmp 0
kill @e[type=marker,tag=tr.gen]
scoreboard players set #generation status 1
summon marker 0 -40 20 {Tags:["tr.gen"]}
execute store result score #globalX tmp run data get storage tr:gen template.base.x
execute store result score #globalY tmp run data get storage tr:gen template.base.y
execute store result score #globalZ tmp run data get storage tr:gen template.base.z

execute as @e[type=marker,tag=tr.gen,limit=1] at @s run function tr:generation/generation/section

execute store result score #totalX tmp run data get storage tr:gen template.totalX

gamemode spectator @a
gamerule spectatorsGenerateChunks true
gamerule doTileDrops false

tp @a 0 45 45 facing 0 0 0