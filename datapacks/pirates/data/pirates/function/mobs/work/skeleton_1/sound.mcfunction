execute store result score @s pir.mob_sound.bb run random value 1..4

execute if score @s pir.mob_sound.bb matches 3.. run playsound entity.skeleton.ambient hostile @a[distance=..7] ~ ~ ~
scoreboard players set @s pir.mob_sound.bb 0
scoreboard players set @s pir.mob_score 0

