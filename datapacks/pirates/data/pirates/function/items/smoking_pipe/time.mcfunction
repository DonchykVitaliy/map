scoreboard players add @s pir.smoke_time.bb 1

execute if score @s pir.smoke_time.bb matches 60 run scoreboard players remove @s pir.smoke_poison.bb 1
execute if score @s pir.smoke_time.bb matches 60.. run scoreboard players set @s pir.smoke_time.bb 0

execute if score @s pir.smoke_poison.bb matches ..0 run tag @s remove pir.smoke.bb