data modify entity @s item.components.minecraft:custom_model_data set value 79356
tag @s add pir.animation_moment
scoreboard players add @s pir.moment_time 1

execute if score @s pir.moment_time matches 79.. run data modify entity @s item.components.minecraft:custom_model_data set value 79350
execute if score @s pir.moment_time matches 79.. run tag @s remove pir.animation_moment
execute if score @s pir.moment_time matches 79.. run scoreboard players set @s pir.mob_moment 0
execute if score @s pir.moment_time matches 79.. run scoreboard players set @s pir.moment_time 0