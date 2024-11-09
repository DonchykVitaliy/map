scoreboard players add @s[tag=!pir.brewing_100.bb] pir.working_brewing.bb 1


execute if score @s pir.working_brewing.bb matches 900 run function pirates:blocks/work/brewing_barrel/process_25
execute if score @s pir.working_brewing.bb matches 1800 run function pirates:blocks/work/brewing_barrel/process_50
execute if score @s pir.working_brewing.bb matches 2700 run function pirates:blocks/work/brewing_barrel/process_75
execute if score @s pir.working_brewing.bb matches 3600 run function pirates:blocks/work/brewing_barrel/process_100

execute if entity @s[tag=pir.brewing_100.bb] run function pirates:blocks/work/brewing_barrel/take_potion