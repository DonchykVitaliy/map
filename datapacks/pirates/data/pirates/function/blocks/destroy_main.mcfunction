execute if data entity @s {attack:{}} run function pirates:blocks/destroy_interaction
execute if data entity @s {interaction:{}} run function pirates:blocks/take_interaction
execute unless block ~ ~ ~ air run function pirates:blocks/destroy_interaction
execute if entity @s[tag=pir.custom_loot] at @s if block ~ ~-0.6 ~ air run function pirates:blocks/destroy_under_interaction