tag @s add pir.bell_hat
effect give @s water_breathing infinite 0 true
execute if block ~ ~1 ~ water run scoreboard players add @s pir.score_bell.bb 1
execute if score @s pir.score_bell.bb matches 480.. run function pirates:items/hat/bell_break