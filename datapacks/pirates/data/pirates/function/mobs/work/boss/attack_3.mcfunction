scoreboard players add @s pir.attack_time 1

execute if score @s pir.attack_time matches 1 at @s run tp @s ^ ^ ^ ~ 0
execute if score @s pir.attack_time matches 1 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.boss.mob] item.components.minecraft:custom_model_data set value 79219
execute if score @s pir.attack_time matches 1 run playsound minecraft:item.trident.riptide_1 hostile @a[distance=..10] ~ ~ ~ 1 1.3
execute if score @s pir.attack_time matches 1..14 at @s if block ^ ^0.03 ^0.4 #pirates:bomb_blocks run tp @s ^ ^0.03 ^0.4
execute if score @s pir.attack_time matches 16.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.boss.mob] item.components.minecraft:custom_model_data set value 79210
execute if entity @s[tag=!pir.second_state] if score @s pir.attack_time matches 16.. run scoreboard players set @s pir.attack_3.refresh 200
execute if entity @s[tag=pir.second_state] if score @s pir.attack_time matches 16.. run scoreboard players set @s pir.attack_3.refresh 120
execute if score @s pir.attack_time matches 16.. run tag @s remove pir.attack_animation_3
execute if score @s pir.attack_time matches 16.. run scoreboard players set @s pir.attack_time 0
