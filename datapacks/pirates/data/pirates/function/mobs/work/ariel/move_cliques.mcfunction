scoreboard players add @s pir.cliques_time 1

tp @s ^ ^-0.03 ^0.45
tp @s ^ ^ ^0.4
particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0 7
schedule function pirates:mobs/work/ariel/cliques_soud 5t append

execute if entity @a[distance=..2.5] run effect give @a[distance=..2.5] instant_damage 1 0 true
execute if entity @a[distance=..2.5] run kill @s
execute unless block ~ ~ ~ #pirates:cliques run kill @s
execute if score @s pir.cliques_time matches 60.. run kill @s