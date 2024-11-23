execute if score @s pir.mob_random matches 0 run function pirates:mobs/work/davy_mobs/random

scoreboard players add @s pir.moment_time 1
particle minecraft:cloud ~ ~1 ~ 0.2 0.5 0.2 0.08 4
execute if score @s pir.moment_time matches 15 run kill @s