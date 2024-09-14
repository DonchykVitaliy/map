scoreboard players add @s pir.smoke_poison.bb 1
tag @s add pir.smoke.bb

execute if score @s pir.smoke_poison.bb matches 3 run function pirates:items/smoking_pipe/effects
execute if score @s pir.smoke_poison.bb matches 4 run function pirates:items/smoking_pipe/effects2
execute if score @s pir.smoke_poison.bb matches 5.. run function pirates:items/smoking_pipe/effects3