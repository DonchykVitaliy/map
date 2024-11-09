#reload gui
schedule function pirates:blocks/work/brewing_barrel_reload_gui 3t append
execute if entity @s[tag=pir.reload_gui] run function pirates:blocks/work/brewing_barrel/clear_gui
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["pir.kill_item"]}}}},distance=..5] run function pirates:blocks/work/brewing_barrel/clear_gui

#craft beer
execute if entity @s[tag=!pir.working.bb] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}},count:1},{Slot:11b,id:"minecraft:wheat",count:4}]} run function pirates:blocks/work/brewing_barrel/craft_beer

#craft rum
execute if entity @s[tag=!pir.working.bb] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}},count:1},{Slot:11b,id:"minecraft:sugar_cane",count:4}]} run function pirates:blocks/work/brewing_barrel/craft_rum

#craft berry
execute if entity @s[tag=!pir.working.bb] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}},count:1},{Slot:11b,id:"minecraft:sweet_berries",count:4}]} run function pirates:blocks/work/brewing_barrel/craft_berry_tincture

#craft coconut
execute if entity @s[tag=!pir.working.bb] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}},count:1},{Slot:11b,id:"minecraft:baked_potato",components:{"minecraft:custom_model_data":70200,"minecraft:custom_data":{Tags:["pir.coconut"]}},count:4}]} run function pirates:blocks/work/brewing_barrel/craft_coconut_tincture

#craft pumpkin
execute if entity @s[tag=!pir.working.bb] if block ~ ~ ~ barrel{Items:[{Slot:10b,id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}},count:1},{Slot:11b,id:"minecraft:pumpkin",count:4}]} run function pirates:blocks/work/brewing_barrel/craft_pumpkin_tincture