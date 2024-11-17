execute store result score @s pir.random_cup.bb run random value 5..12

execute if entity @s[gamemode=!creative] unless score @s pir.random_cup.bb matches 12.. run loot give @s loot pirates:golden_cup
execute if score @s pir.random_cup.bb matches 12.. run playsound entity.item.break player @a[distance=..4] ~ ~ ~
execute if score @s pir.random_cup.bb matches 12.. run scoreboard players set @s pir.random_cup.bb 0