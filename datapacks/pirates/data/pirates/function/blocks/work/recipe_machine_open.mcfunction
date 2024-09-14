#reload gui
schedule function pirates:blocks/work/recipe_machine_reload_gui 3t append
execute if entity @s[tag=pir.reload_gui] run function pirates:blocks/work/recipe_machine/clear_gui
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["pir.kill_item"]}}}},distance=..5] run function pirates:blocks/work/recipe_machine/clear_gui

###crafts
#beer
execute unless block ~ ~ ~ barrel{Items:[{Slot:12b,id:"minecraft:firework_star"}]} run function pirates:blocks/work/recipe_machine/recipe_1
#rum
execute unless block ~ ~ ~ barrel{Items:[{Slot:13b,id:"minecraft:firework_star"}]} run function pirates:blocks/work/recipe_machine/recipe_2
#berry
execute unless block ~ ~ ~ barrel{Items:[{Slot:14b,id:"minecraft:firework_star"}]} run function pirates:blocks/work/recipe_machine/recipe_3
#pumpkin
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b,id:"minecraft:firework_star"}]} run function pirates:blocks/work/recipe_machine/recipe_4
#coconut
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b,id:"minecraft:firework_star"}]} run function pirates:blocks/work/recipe_machine/recipe_5