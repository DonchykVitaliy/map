scoreboard players add @s pir.cannon.bb 1

execute if score @s pir.cannon.bb matches 1 unless entity @s[tag=pir.fire_ball] run clear @a[distance=..2.4,nbt={SelectedItem:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_data":{Tags:["pir.cannonball.bb"]}}}},limit=1] minecraft:silverfish_spawn_egg[minecraft:custom_model_data=73015,minecraft:custom_data={Tags:["pir.cannonball.bb"]}] 1
execute if score @s pir.cannon.bb matches 1 if entity @s[tag=pir.fire_ball] run clear @a[distance=..2.4,nbt={SelectedItem:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_data":{Tags:["pir.cannonball.bb","pir.fire_cannonball.bb"]}}}},limit=1] minecraft:silverfish_spawn_egg[minecraft:custom_model_data=73012,minecraft:custom_data={Tags:["pir.cannonball.bb","pir.fire_cannonball.bb"]}] 1
execute if score @s pir.cannon.bb matches 1 run playsound block.iron_trapdoor.open block @a[distance=..10] ~ ~ ~ 2 0.2
execute if score @s pir.cannon.bb matches 21 run playsound minecraft:block.grass.step block @a[distance=..10] ~ ~ ~ 0.45 0.5
execute if score @s pir.cannon.bb matches 41 run playsound minecraft:item.armor.equip_iron block @a[distance=..10] ~ ~ ~ 5 0.2
execute if score @s pir.cannon.bb matches 61 run playsound block.iron_trapdoor.close block @a[distance=..10] ~ ~ ~ 2 0.2

data remove entity @s interaction
execute if score @s pir.cannon.bb matches 65 run tag @s add pir.cannon_charge
execute if score @s pir.cannon.bb matches 65 if entity @s[tag=south.rot] positioned ~ ~ ~1 run tag @e[tag=pir.cannon_main.bb,distance=..0.8,limit=1,sort=nearest] add pir.cannon_charge
execute if score @s pir.cannon.bb matches 65 if entity @s[tag=east.rot] positioned ~1 ~ ~ run tag @e[tag=pir.cannon_main.bb,distance=..0.4,limit=1,sort=nearest] add pir.cannon_charge
execute if score @s pir.cannon.bb matches 65 if entity @s[tag=west.rot] positioned ~-1 ~ ~ run tag @e[tag=pir.cannon_main.bb,distance=..0.4,limit=1,sort=nearest] add pir.cannon_charge
execute if score @s pir.cannon.bb matches 65 if entity @s[tag=north.rot] positioned ~ ~ ~-1 run tag @e[tag=pir.cannon_main.bb,distance=..0.4,limit=1,sort=nearest] add pir.cannon_charge
execute if score @s pir.cannon.bb matches 65 run tag @s remove pir.load_cannon
execute if score @s pir.cannon.bb matches 65.. run scoreboard players set @s pir.cannon.bb 0