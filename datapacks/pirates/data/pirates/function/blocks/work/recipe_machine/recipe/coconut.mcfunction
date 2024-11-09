#reload
clear @s firework_star[minecraft:custom_data={Tags:["pir.kill_item","pir.craft_recipe5.bb","pir.ui_recipe_machine.bb"]}]
tag @e[type=item_display,distance=..6] add pir.reload_gui
scoreboard players set @s pir.craft_recipe5.selected 0

#detect
execute store result score @s pir.craft_recipe1.paper run clear @s paper 0
execute if score @s pir.craft_recipe1.paper matches ..3 run function pirates:blocks/work/recipe_machine/recipe/no_components
execute if score @s pir.craft_recipe1.paper matches 4.. run function pirates:blocks/work/recipe_machine/recipe/craft/coconut
