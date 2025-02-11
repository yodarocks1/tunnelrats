$execute unless data entity @s $(item_path).components."minecraft:custom_data"."tr:custom_model_color".team$(team) \
         run return 0

$data modify storage tr:tmp custom_model_color set value {item_path:"$(item_path)", color:$(color),team:$(team)}
$data modify storage tr:tmp custom_model_color.index set \
        from entity @s $(item_path).components."minecraft:custom_data"."tr:custom_model_color".team$(team)

function tr:data_update/_update_custom_model_color with storage tr:tmp custom_model_color