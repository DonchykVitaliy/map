#reload
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.pistol.bb","pir.empty"]}}}}] if score @s pir.pistol_reload.bb matches 1.. run function pirates:items/pistol/start_load

#stop reload
execute if score @s pir.pistol_reload.bb matches 0 unless score @s pir.pistol.bb matches 0 run function pirates:items/pistol/stop_reload

#shoot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.pistol.bb"]}}}},scores={pir.shoot_pistol.bb=1..}] if entity @e[type=arrow,distance=..2] run function pirates:items/pistol/shoot
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.pistol.bb"]}}}]},scores={pir.shoot_pistol.bb=1..}] if entity @e[type=arrow,distance=..2] run function pirates:items/pistol/shoot


#scoreboard
scoreboard players set @s pir.shoot_pistol.bb 0

#block use arrow
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.iron_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run function pirates:items/pistol/block_iron
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.iron_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run function pirates:items/pistol/block_iron
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.iron_pistol"]},!minecraft:charged_projectiles=[{ id: "minecraft:arrow"}]] run function pirates:items/pistol/refresh_iron

execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.gold_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run function pirates:items/pistol/block_gold
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.gold_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run function pirates:items/pistol/block_gold
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.gold_pistol"]},!minecraft:charged_projectiles=[{ id: "minecraft:arrow"}]] run function pirates:items/pistol/refresh_gold
