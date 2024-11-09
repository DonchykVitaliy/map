scoreboard players set @s pir.kill_mermaid.bb 0
execute store result score *random_ariel pir.ariel_spawn.bb run random value 1..10

execute if score *random_ariel pir.ariel_spawn.bb matches 8.. run tag @s add pir.spawn_ariel

scoreboard players set *random_ariel pir.ariel_spawn.bb 0