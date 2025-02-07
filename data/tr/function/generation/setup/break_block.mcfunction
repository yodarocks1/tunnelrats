loot spawn ~ ~ ~ mine ~ ~ ~ diamond_pickaxe[enchantments={silk_touch: 1},custom_data={blockCheck: 1b}]
data modify storage tr:tmp block.id set from entity @e[type=item,limit=1,sort=nearest] Item.id
kill @e[type=item,limit=1,sort=nearest]