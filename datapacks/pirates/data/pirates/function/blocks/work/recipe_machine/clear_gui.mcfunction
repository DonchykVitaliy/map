function pirates:blocks/work/recipe_machine/drop_items

data modify block ~ ~ ~ Items insert -1 from storage minecraft:recipe_machine_gui gui_barrel_recipe[]

scoreboard players set @a[distance=..10] pir.chek_gui_barrel.bb 0
tag @s remove pir.reload_gui
clear @a #pirates:clear[minecraft:custom_data={Tags:["pir.kill_item","pir.ui_recipe_machine.bb"]}]
kill @e[type=item,nbt={Item:{components: {"minecraft:custom_data":{Tags:["pir.kill_item"]}}}},distance=..2]