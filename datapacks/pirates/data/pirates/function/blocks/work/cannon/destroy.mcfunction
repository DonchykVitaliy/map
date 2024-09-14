execute store result score @s pir.cannon_destroy.bb run random value 5..10

execute if score @s pir.cannon_destroy.bb matches 10 run summon tnt ~ ~ ~
execute if score @s pir.cannon_destroy.bb matches 10 run function pirates:blocks/destroy/cannon