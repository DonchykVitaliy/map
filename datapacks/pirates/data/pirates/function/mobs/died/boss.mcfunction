scoreboard players add @s pir.death_time 1
data modify entity @s item.components."minecraft:potion_contents".custom_color set value 1
data modify entity @s item.components."minecraft:custom_model_data" set value 79212

execute if score @s pir.death_time matches 19.. run advancement grant @a[distance=..10] only pirates:pirates/boss
execute if score @s pir.death_time matches 19.. run bossbar remove pir.boss_health.bb
execute if score @s pir.death_time matches 19.. run kill @s
