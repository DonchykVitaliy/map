function pirates:blocks/work/brewing_barrel/drop_items

execute if entity @s[tag=!pir.brewing_25.bb] run data modify block ~ ~ ~ Items insert -1 from storage minecraft:brewing_barrel_gui gui_barrel[]
execute if entity @s[tag=pir.brewing_25.bb] run data modify block ~ ~ ~ Items insert -1 from storage minecraft:brewing_barrel_gui25 gui_barrel25[]
execute if entity @s[tag=pir.brewing_50.bb] run data modify block ~ ~ ~ Items insert -1 from storage minecraft:brewing_barrel_gui50 gui_barrel50[]
execute if entity @s[tag=pir.brewing_75.bb] run data modify block ~ ~ ~ Items insert -1 from storage minecraft:brewing_barrel_gui75 gui_barrel75[]
execute if entity @s[tag=pir.brewing_100.bb] run data modify block ~ ~ ~ Items insert -1 from storage minecraft:brewing_barrel_gui100 gui_barrel100[]

scoreboard players set @a[distance=..10] pir.chek_gui_barrel.bb 0
tag @s remove pir.reload_gui
clear @a #pirates:clear[minecraft:custom_data={Tags:["pir.kill_item","pir.ui_brewing_barrel.bb"]}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["pir.kill_item"]}}}},distance=..2]