#beer
execute if entity @s[tag=pir.w_beer.bb] if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:firework_star",components:{"minecraft:custom_model_data":73005},count:1}] run function pirates:blocks/work/brewing_barrel/crafts/beer

#berry_tincture
execute if entity @s[tag=pir.w_berry.bb] if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:firework_star",components:{"minecraft:custom_model_data":73005},count:1}] run function pirates:blocks/work/brewing_barrel/crafts/berry_tincture

#rum
execute if entity @s[tag=pir.w_rum.bb] if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:firework_star",components:{"minecraft:custom_model_data":73005},count:1}] run function pirates:blocks/work/brewing_barrel/crafts/rum

#coconout
execute if entity @s[tag=pir.w_coconut.bb] if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:firework_star",components:{"minecraft:custom_model_data":73005},count:1}] run function pirates:blocks/work/brewing_barrel/crafts/coconut_tincture

#pumpkin
execute if entity @s[tag=pir.w_pumpkin.bb] if data block ~ ~ ~ Items[{Slot:16b,id:"minecraft:firework_star",components:{"minecraft:custom_model_data":73005},count:1}] run function pirates:blocks/work/brewing_barrel/crafts/pumpkin