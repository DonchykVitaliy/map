execute as @e[type=parrot,distance=..0.4,tag=pir.in_cage] at @s run tag @s add pir.open_cage
execute as @e[type=parrot,tag=pir.open_cage] at @s run spreadplayers ~ ~ 1 1 true @s
execute as @e[type=parrot,tag=pir.open_cage] at @s run data merge entity @s {NoAI:0b}
execute as @e[type=parrot,tag=pir.open_cage] at @s run tag @s remove pir.in_cage
execute as @e[type=parrot,tag=pir.open_cage] at @s run tag @s remove pir.open_cage
tag @s remove pir.full_cage.bb

data remove entity @s interaction