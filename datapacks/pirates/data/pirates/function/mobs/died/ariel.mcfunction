scoreboard players add @s pir.death_time 1
data modify entity @s item.components."minecraft:potion_contents".custom_color set value 1
data modify entity @s item.components."minecraft:custom_model_data" set value 79042

execute if score @s pir.death_time matches 1 run playsound minecraft:mermaid_death hostile @a[distance=..5] ~ ~ ~ 2
execute if score @s pir.death_time matches 19.. run bossbar remove pir.ariel_health.bb
execute if score @s pir.death_time matches 19.. run kill @s
