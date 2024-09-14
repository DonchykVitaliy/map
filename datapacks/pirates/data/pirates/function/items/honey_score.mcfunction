execute if entity @s[tag=pir.eat_beer] run function pirates:items/beverages/beer
execute if entity @s[tag=pir.eat_berry] run function pirates:items/beverages/berry
execute if entity @s[tag=pir.eat_rum] run function pirates:items/beverages/rum
execute if entity @s[tag=pir.eat_pumpkin] run function pirates:items/beverages/pumpkin
execute if entity @s[tag=pir.eat_coconout] run function pirates:items/beverages/coconout
execute if score @s pir.selected_cup.bb matches 1.. run function pirates:items/beverages/cup

execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.beverages"]}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{Tags:["pir.beverages"]}}}]}] if score @s pir.eat_honey.bb matches 1.. run scoreboard players set @s pir.eat_honey.bb 0
