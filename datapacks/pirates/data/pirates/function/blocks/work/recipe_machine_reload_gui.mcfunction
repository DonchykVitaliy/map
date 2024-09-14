#reload gui
execute as @a store result score @s pir.chek_gui_barrel.bb run clear @s #pirates:clear[minecraft:custom_data={Tags:["pir.kill_item","pir.ui_recipe_machine.bb"]}] 0
execute as @a[scores={pir.chek_gui_barrel.bb=1..}] at @s run tag @e[type=item_display,sort=nearest,tag=pir.recipe_machine.bb,limit=1] add pir.reload_gui

#reload function
schedule clear pirates:blocks/work/recipe_machine_reload_gui