#barrel_with_gold
execute if entity @s[tag=pir.barrel.bb] unless block ~ ~ ~ barrel run function pirates:blocks/destroy/barrel_with_gold
#brewing_barrel
execute if entity @s[tag=pir.brewing_barrel.bb] unless block ~ ~ ~ barrel run function pirates:blocks/destroy/brewing_barrel
#cannon
execute if entity @s[tag=pir.cannon.bb] run function pirates:blocks/work/cannon/cannon_block
#brewing_barrel
execute if entity @s[tag=pir.recipe_machine.bb] unless block ~ ~ ~ barrel run function pirates:blocks/destroy/recipe_machine
#golden_scull
execute if entity @s[tag=pir.golden_scull.bb] unless block ~ ~ ~ player_head run function pirates:blocks/destroy/golden_scull