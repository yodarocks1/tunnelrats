# Use score 1 to indicate obstructed
$execute if block $(x) $(y) $(z) #minecraft:beds \
         unless score @s team$(team).bedless matches 1 \
         run scoreboard players display numberformat @s team$(team).bedless fixed \
         {"translate": "tr.text.bedless.present", "color": "dark_green"}

# If missing, we don't care if it's obstructed
$execute unless block $(x) $(y) $(z) #minecraft:beds \
         run scoreboard players set @s team$(team).bedless 0
$execute unless block $(x) $(y) $(z) #minecraft:beds \
         run scoreboard players display numberformat @s team$(team).bedless fixed \
         {"translate": "tr.text.bedless.missing", "color": "red"}