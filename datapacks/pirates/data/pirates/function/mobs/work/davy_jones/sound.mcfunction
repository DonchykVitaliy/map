execute store result score @s pir.mob_sound.bb run random value 1..4

execute if score @s pir.mob_sound.bb matches 3.. run playsound minecraft:entity.ravager.celebrate hostile @a[distance=..8] ~ ~ ~ 3 1.2
scoreboard players set @s pir.mob_sound.bb 0
scoreboard players set @s pir.moment_time 120
