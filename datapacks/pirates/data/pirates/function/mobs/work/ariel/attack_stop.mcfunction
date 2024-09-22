scoreboard players add @s pir.attack_time 1

execute if entity @s[tag=!pir.second_state] if score @s pir.attack_time matches 26 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.ariel.mob] item.components.minecraft:custom_model_data set value 79041
execute if entity @s[tag=pir.second_state] if score @s pir.attack_time matches 26 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.ariel.mob] item.components.minecraft:custom_model_data set value 79048

execute if entity @s[tag=!pir.second_state] if score @s pir.attack_time matches 139.. run tag @s remove pir.attack_animation
execute if entity @s[tag=!pir.second_state] if score @s pir.attack_time matches 139.. run scoreboard players set @s pir.attack_time 0

execute if entity @s[tag=pir.second_state] if score @s pir.attack_time matches 99.. run tag @s remove pir.attack_animation
execute if entity @s[tag=pir.second_state] if score @s pir.attack_time matches 99.. run scoreboard players set @s pir.attack_time 0