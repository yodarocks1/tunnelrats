# return 0
execute store result score #r tmp if blocks -32 138 -11 -32 138 11 -39 138 -11 all
execute if score #r tmp matches 0 run clone -39 138 -11 -39 138 11 -32 138 -11
execute store result score #r tmp if blocks -32 150 -11 -32 150 11 -39 150 -11 all
execute if score #r tmp matches 0 run clone -39 150 -11 -39 150 11 -32 150 -11
execute store result score #r tmp if blocks -32 137 -10 -32 151 -10 -39 137 -10 all
execute if score #r tmp matches 0 run clone -39 137 -10 -39 151 -10 -32 137 -10
execute store result score #r tmp if blocks -32 137 10 -32 151 10 -39 137 10 all
execute if score #r tmp matches 0 run clone -39 137 10 -39 151 10 -32 137 10
execute store result score #r tmp if blocks -33 137 -11 -34 151 11 -41 137 -11 all
execute if score #r tmp matches 0 run clone -40 137 -11 -41 151 11 -34 137 -11
execute store result score #r tmp if blocks -31 137 -11 -31 151 11 -38 137 -11 all
execute if score #r tmp matches 0 run clone -38 138 -10 -38 150 10 -31 138 -10
# tellraw @a [{"score":{"name": "#r", "objective": "tmp"}}]
# execute if score #r tmp matches 0 run say replace!

#/clone -31 137 -11 -32 151 11 -41 137 -11

execute store result score #r tmp run fill -30 138 -10 -33 150 10 air replace water
execute if score #r tmp matches 1.. run tellraw @p[tag=adminArea] [{"translate": "tr.text.admin.no_fluids", "color": "red"}]
execute store result score #r tmp run fill -30 138 -10 -33 150 10 air replace lava
execute if score #r tmp matches 1.. run tellraw @p[tag=adminArea] [{"translate": "tr.text.admin.no_fluids", "color": "red"}]