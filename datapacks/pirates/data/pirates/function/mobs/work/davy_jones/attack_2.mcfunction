scoreboard players add @s pir.attack_time_2 1

execute if score @s pir.attack_time_2 matches 1 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] item.components.minecraft:custom_model_data set value 79384

say at
execute if score @s pir.attack_time_2 matches 10 run effect give @a[distance=..20,gamemode=!creative,gamemode=!spectator] minecraft:levitation 1 13 true

execute if score @s pir.attack_time_2 matches 37.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] item.components.minecraft:custom_model_data set value 79380
execute if score @s pir.attack_time_2 matches 37.. run effect clear @s slowness
execute if entity @s[tag=!pir.second_state] if score @s pir.attack_time_2 matches 37.. run scoreboard players set @s pir.attack_2.refresh 300
execute if entity @s[tag=pir.second_state] if score @s pir.attack_time_2 matches 37.. run scoreboard players set @s pir.attack_2.refresh 200
execute if score @s pir.attack_time_2 matches 37.. run tag @s remove pir.attack_animation_2
execute if score @s pir.attack_time_2 matches 37.. run scoreboard players set @s pir.attack_time_2 0
