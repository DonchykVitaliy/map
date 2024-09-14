scoreboard players add @s pir.death_time 1
data modify entity @s item.components."minecraft:potion_contents".custom_color set value 1
data modify entity @s item.components."minecraft:custom_model_data" set value 79022

execute if score @s pir.death_time matches 1 run scoreboard players add @a[limit=1,sort=nearest] pir.kill_mermaid.bb 1
execute if entity @a[distance=..10,tag=pir.spawn_ariel] run function pirates:mobs/spawn/ocean/ariel

execute if score @s pir.death_time matches 1 run playsound minecraft:mermaid_death hostile @a[distance=..5] ~ ~ ~ 2
execute if score @s pir.death_time matches 19.. run kill @s
