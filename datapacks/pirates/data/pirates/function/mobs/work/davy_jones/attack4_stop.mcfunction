scoreboard players add @s pir.attack_time 1

execute if score @s pir.attack_time matches 15 run playsound entity.player.attack.sweep hostile @a[distance=..7]
execute if score @s pir.attack_time matches 25.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] item.components.minecraft:custom_model_data set value 79380
execute if score @s pir.attack_time matches 25.. run scoreboard players set @n[type=vindicator,limit=1,tag=pir.davy_jones.mob] pir.attack_4.refresh 300
execute if score @s pir.attack_time matches 25.. run tag @s remove pir.attack_animation4
execute if score @s pir.attack_time matches 25.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] transformation.translation set value [0f,0f,0f]
execute if score @s pir.attack_time matches 25.. run scoreboard players set @s pir.attack_time 0