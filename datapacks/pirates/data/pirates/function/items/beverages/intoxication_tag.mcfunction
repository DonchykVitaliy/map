execute if score @s pir.t_intoxication.bb matches ..0 run tag @s remove pir.t_intoxication
execute if score @s pir.t_intoxication.bb matches 3.. run function pirates:items/beverages/intoxication

scoreboard players add @s pir.intoxication.bb 1
execute if score @s pir.intoxication.bb matches 60.. run scoreboard players remove @s pir.t_intoxication.bb 1
execute if score @s pir.intoxication.bb matches 60.. run scoreboard players set @s pir.intoxication.bb 0
