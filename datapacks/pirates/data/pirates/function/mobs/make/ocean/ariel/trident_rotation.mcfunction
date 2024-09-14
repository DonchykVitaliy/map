execute store result score @s pir.bombX1.bb run data get entity @s Pos[0] 500
execute store result score @s pir.bombY1.bb run data get entity @s Pos[1] 500
execute store result score @s pir.bombZ1.bb run data get entity @s Pos[2] 500
tp @s ^ ^ ^0.1
execute store result score @s pir.bombX2.bb run data get entity @s Pos[0] 500
execute store result score @s pir.bombY2.bb run data get entity @s Pos[1] 500
execute store result score @s pir.bombZ2.bb run data get entity @s Pos[2] 500
execute store result entity @s Motion[0] double 0.03 run scoreboard players operation @s pir.bombX2.bb -= @s pir.bombX1.bb
execute store result entity @s Motion[1] double 0.03 run scoreboard players operation @s pir.bombY2.bb -= @s pir.bombY1.bb
execute store result entity @s Motion[2] double 0.03 run scoreboard players operation @s pir.bombZ2.bb -= @s pir.bombZ1.bb
tag @s add pir.motion