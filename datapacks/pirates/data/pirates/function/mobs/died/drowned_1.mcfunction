scoreboard players add @s pir.death_time 1
data modify entity @s item.components."minecraft:potion_contents".custom_color set value 1
data modify entity @s item.components."minecraft:custom_model_data" set value 79342

execute if score @s pir.death_time matches 1 run playsound entity.drowned.death hostile @a[distance=..10] ~ ~ ~
execute if score @s pir.death_time matches 19.. run kill @s
