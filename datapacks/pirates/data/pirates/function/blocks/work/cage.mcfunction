execute as @e[type=parrot,tag=!pir.in_cage,distance=..0.4] run tag @s add pir.in_cage
execute if entity @e[type=parrot,tag=pir.in_cage,distance=..0.4] run tag @s add pir.full_cage.bb
execute as @e[type=parrot,tag=pir.in_cage,distance=..0.4] at @s run function pirates:blocks/work/cage/parrot