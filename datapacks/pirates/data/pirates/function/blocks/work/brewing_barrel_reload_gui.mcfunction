#reload gui
execute as @a store result score @s pir.chek_gui_barrel.bb run clear @s #pirates:clear[minecraft:custom_data={Tags:["pir.kill_item","pir.ui_brewing_barrel.bb"]}] 0
execute as @a[scores={pir.chek_gui_barrel.bb=1..}] at @s run tag @e[type=item_display,sort=nearest,tag=pir.brewing_barrel.bb] add pir.reload_gui

#reload function
schedule clear pirates:blocks/work/brewing_barrel_reload_gui