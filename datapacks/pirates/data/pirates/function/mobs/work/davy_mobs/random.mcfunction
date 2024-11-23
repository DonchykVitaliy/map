execute store result score @s pir.mob_random run random value 1..3

execute if score @s pir.mob_random matches 1 run function pirates:mobs/summon/undead/skeleton_1
execute if score @s pir.mob_random matches 2 run function pirates:mobs/summon/undead/skeleton_2
execute if score @s pir.mob_random matches 3 run function pirates:mobs/summon/undead/skeleton_3