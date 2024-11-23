bossbar set pir.davy_jones_health.bb name {"translate":"pir.mob_ocean.davy_jones_s"}
particle minecraft:angry_villager ~ ~1.5 ~ 0.1 0.3 0.1 0.1 4
playsound minecraft:entity.ravager.stunned hostile @a[distance=..10] ~ ~ ~ 3 1.2
data merge entity @s {attributes:[{id:"minecraft:burning_time",base:1.5},{id:"minecraft:knockback_resistance",base:0.8},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:max_health",base:220},{id:"minecraft:armor",base:23},{id:"minecraft:attack_knockback",base:2.8},{id:"minecraft:water_movement_efficiency",base:5},{id:"minecraft:follow_range",base:40}]}

summon marker ~ ~ ~3 {Tags:["pir.davy_mobs","pir.custom_mobs"]}
summon marker ~ ~ ~-3 {Tags:["pir.davy_mobs","pir.custom_mobs"]}
summon marker ~3 ~ ~ {Tags:["pir.davy_mobs","pir.custom_mobs"]}
summon marker ~-3 ~ ~ {Tags:["pir.davy_mobs","pir.custom_mobs"]}

execute as @e[type=marker,tag=pir.davy_mobs] run scoreboard players set @s pir.mob_random 0

tag @s add pir.second_state