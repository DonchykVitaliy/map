execute as @a[distance=..6] store result score @s pir.craft_recipe4.selected run clear @s firework_star[minecraft:custom_data={Tags:["pir.kill_item","pir.craft_recipe4.bb","pir.ui_recipe_machine.bb"]}] 0

execute as @a[distance=..6] if score @s pir.craft_recipe4.selected matches 1.. run function pirates:blocks/work/recipe_machine/recipe/pumpkin