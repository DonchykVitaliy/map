scoreboard players add @s pir.cannon_tnt.bb 1

execute if entity @s[tag=west.rot] unless block ~0.5 ~ ~ #pirates:bomb_blocks run scoreboard players set @s pir.cannon_tnt.bb 37
execute if entity @s[tag=east.rot] unless block ~-0.5 ~ ~ #pirates:bomb_blocks run scoreboard players set @s pir.cannon_tnt.bb 37
execute if entity @s[tag=north.rot] unless block ~ ~ ~0.5 #pirates:bomb_blocks run scoreboard players set @s pir.cannon_tnt.bb 37
execute if entity @s[tag=south.rot] unless block ~ ~ ~-0.5 #pirates:bomb_blocks run scoreboard players set @s pir.cannon_tnt.bb 37
execute if entity @e[type=!#pirates:cannon,distance=..1] run scoreboard players set @s pir.cannon_tnt.bb 37

execute unless block ~ ~-0.3 ~ #pirates:bomb_blocks run scoreboard players set @s pir.cannon_tnt.bb 37

execute if score @s pir.cannon_tnt.bb matches 37.. run function pirates:blocks/work/cannon/explosion