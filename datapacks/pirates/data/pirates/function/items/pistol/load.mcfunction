execute unless entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.pistol.bb"]}}}}] run scoreboard players set @s pir.pistol.bb 0

execute if score @s pir.pistol.bb matches 15..60 run effect give @s slowness 1 1 true
execute if score @s pir.pistol.bb matches 1 run playsound minecraft:block.iron_trapdoor.close player @a[distance=..10] ~ ~ ~ 0.8 1.4
execute if score @s pir.pistol.bb matches 10 run playsound minecraft:item.flintandsteel.use player @a[distance=..10] ~ ~ ~ 1.5 1.3
execute if score @s pir.pistol.bb matches 25 run playsound minecraft:block.iron_trapdoor.open player @a[distance=..10] ~ ~ ~ 0.8 1.5
execute if score @s pir.pistol.bb matches 40 run playsound minecraft:block.grass.step player @a[distance=..10] ~ ~ ~ 0.4 0.7
execute if score @s pir.pistol.bb matches 50 if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.gold_pistol"]}}}}] run item modify entity @s weapon.mainhand pirates:pistol/pistol_model
execute if score @s pir.pistol.bb matches 50 if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.iron_pistol"]}}}}] run item modify entity @s weapon.mainhand pirates:pistol/iron_pistol_model
execute if score @s pir.pistol.bb matches 60 run playsound minecraft:block.lever.click player @a[distance=..10] ~ ~ ~ 0.5 2
execute if score @s pir.pistol.bb matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.gold_pistol"]}}}}] run item modify entity @s weapon.mainhand pirates:pistol/pistol_reload
execute if score @s pir.pistol.bb matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.iron_pistol"]}}}}] run item modify entity @s weapon.mainhand pirates:pistol/iron_pistol_reload
execute if score @s pir.pistol.bb matches 1 run clear @s firework_star[minecraft:custom_model_data=73003] 1
scoreboard players remove @s[scores={pir.pistol.bb=1..}] pir.pistol.bb 1