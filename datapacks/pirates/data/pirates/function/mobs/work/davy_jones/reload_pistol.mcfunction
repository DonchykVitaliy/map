scoreboard players add @s pir.boss_pistol.time 1

execute if score @s pir.boss_pistol.time matches 1 run tag @s add pir.reload
execute if score @s pir.boss_pistol.time matches 1 run effect give @s slowness infinite 255 true
execute if score @s pir.boss_pistol.time matches 1 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.boss.mob] item.components.minecraft:custom_model_data set value 79218

execute if score @s pir.boss_pistol.time matches 80.. run effect clear @s slowness
execute if score @s pir.boss_pistol.time matches 80.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.boss.mob] item.components.minecraft:custom_model_data set value 79210
execute if score @s pir.boss_pistol.time matches 80.. run tag @s remove pir.reload
execute if score @s pir.boss_pistol.time matches 80.. run scoreboard players set @s pir.boss_pistol.refresh 0
execute if score @s pir.boss_pistol.time matches 80.. run scoreboard players set @s pir.boss_pistol.time 0

