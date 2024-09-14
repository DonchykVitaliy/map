execute unless entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.rifle.bb"]}}}}] run scoreboard players set @s pir.rifle.bb 0

execute if score @s pir.rifle.bb matches 15..80 run effect give @s slowness 1 1 true
execute if score @s pir.rifle.bb matches 1 run playsound minecraft:block.iron_trapdoor.close player @a[distance=..10] ~ ~ ~ 0.8 1.1
execute if score @s pir.rifle.bb matches 20 run playsound minecraft:item.flintandsteel.use player @a[distance=..10] ~ ~ ~ 1.5 1.2
execute if score @s pir.rifle.bb matches 40 run playsound minecraft:block.iron_trapdoor.open player @a[distance=..10] ~ ~ ~ 0.8 1.1
execute if score @s pir.rifle.bb matches 60 run playsound minecraft:block.grass.step player @a[distance=..10] ~ ~ ~ 0.45 0.5
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item","pir.empty"]}] if score @s pir.rifle.bb matches 50 run item modify entity @s weapon.mainhand pirates:rifle/riflet_model
execute if score @s pir.rifle.bb matches 70 run item modify entity @s weapon.mainhand pirates:rifle/riflet_model
execute if score @s pir.rifle.bb matches 80 run playsound minecraft:block.lever.click player @a[distance=..10] ~ ~ ~ 0.5 1.5
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item","pir.empty"]}] if score @s pir.rifle.bb matches 1 run item modify entity @s weapon.mainhand pirates:rifle/riflet_reload_enchanted
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item","pir.empty"]}] if score @s pir.rifle.bb matches 1 run item modify entity @s weapon.mainhand pirates:rifle/riflet_reload
execute if score @s pir.rifle.bb matches 1 run clear @s firework_star[minecraft:custom_model_data=73003] 1
scoreboard players remove @s[scores={pir.rifle.bb=1..}] pir.rifle.bb 1