execute if entity @s[tag=pir.eat_rum,tag=!pir.quest.rum] if score @s pir.eat_honey.bb matches 1.. run scoreboard players add @s pir.quest_alcohol 1
execute if entity @s[tag=pir.eat_rum,tag=!pir.quest.rum] if score @s pir.eat_honey.bb matches 1.. run tag @s add pir.quest.rum

execute if entity @s[tag=pir.eat_beer,tag=!pir.quest.beer] if score @s pir.eat_honey.bb matches 1.. run scoreboard players add @s pir.quest_alcohol 1
execute if entity @s[tag=pir.eat_beer,tag=!pir.quest.beer] if score @s pir.eat_honey.bb matches 1.. run tag @s add pir.quest.beer

execute if entity @s[tag=pir.eat_berry,tag=!pir.quest.berry] if score @s pir.eat_honey.bb matches 1.. run scoreboard players add @s pir.quest_alcohol 1
execute if entity @s[tag=pir.eat_berry,tag=!pir.quest.berry] if score @s pir.eat_honey.bb matches 1.. run tag @s add pir.quest.berry

execute if entity @s[tag=pir.eat_coconout,tag=!pir.quest.coconut] if score @s pir.eat_honey.bb matches 1.. run scoreboard players add @s pir.quest_alcohol 1
execute if entity @s[tag=pir.eat_coconout,tag=!pir.quest.coconut] if score @s pir.eat_honey.bb matches 1.. run tag @s add pir.quest.coconut

execute if entity @s[tag=pir.eat_pumpkin,tag=!pir.quest.pumpkin] if score @s pir.eat_honey.bb matches 1.. run scoreboard players add @s pir.quest_alcohol 1
execute if entity @s[tag=pir.eat_pumpkin,tag=!pir.quest.pumpkin] if score @s pir.eat_honey.bb matches 1.. run tag @s add pir.quest.pumpkin

execute if score @s pir.quest_alcohol matches 5.. run function pirates:ships/quests/quest5/complete