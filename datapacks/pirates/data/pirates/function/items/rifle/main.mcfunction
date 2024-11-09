#reload
execute if score @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.rifle.bb"]}}}}] pir.rifle_reload.bb matches 1.. run function pirates:items/rifle/start_load

#stop reload
execute if score @s pir.rifle_reload.bb matches 0 unless score @s pir.rifle.bb matches 0 run function pirates:items/rifle/stop_reload

#shoot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.rifle.bb"]}}}},scores={pir.shoot_rifle.bb=1..}] if entity @e[type=arrow,distance=..2] run function pirates:items/rifle/shoot
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.rifle.bb"]}}}]},scores={pir.shoot_rifle.bb=1..}] if entity @e[type=arrow,distance=..2] run function pirates:items/rifle/shoot

#scoreboard
scoreboard players set @s pir.shoot_rifle.bb 0

#block use arrow
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["pir.rifle.bb"],Charged:0b}}}] if entity @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{Tags:["pir.enchanted_speed"]}}}] run item modify entity @s weapon.mainhand pirates:block_rifle
#execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Tags:["pir.rifle.bb"],Charged:0b}}]}] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Tags:["pir.enchanted_speed"]}}]}] run item modify entity @s weapon.offhand pirates:block_rifle
##ця частина коду була написана ще для версії 1.19 (навіть не 1.19.5) і працювала чудово, але зараз я до неї повернувся аж на версії 1.21 і вона зламалась =()
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item","pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run function pirates:items/rifle/block
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item","pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run function pirates:items/rifle/block
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item",]},!minecraft:charged_projectiles=[{ id: "minecraft:arrow"}]] run function pirates:items/rifle/refresh

execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item","pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run function pirates:items/rifle/block
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item","pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run function pirates:items/rifle/block
execute if items entity @s weapon.* minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item",]},!minecraft:charged_projectiles=[{ id: "minecraft:arrow"}]] run function pirates:items/rifle/refresh
