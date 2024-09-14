execute store result score @s pir.mob_random run random value 1..10
scoreboard players set @s pir.mob_score 0

execute if score @s pir.mob_random matches 8.. store result score @s pir.mob_moment run random value 1..3
scoreboard players set @s pir.mob_random 0