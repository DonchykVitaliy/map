scoreboard players add @s pir.attack_time 1

execute if score @s pir.attack_time matches 25.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] item.components.minecraft:custom_model_data set value 79380
execute if score @s pir.attack_time matches 25.. run tag @s remove pir.attack_animation
execute if score @s pir.attack_time matches 25.. run scoreboard players set @s pir.attack_time 0