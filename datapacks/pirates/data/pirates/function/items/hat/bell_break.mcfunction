scoreboard players add @s pir.score_bell.bb 1
execute if score @s pir.score_bell.bb matches 60.. run item modify entity @s armor.head pirates:bell_hat
execute if score @s pir.score_bell.bb matches 60.. run scoreboard players set @s pir.score_bell.bb 0
