scoreboard players add @s pir.updates_effects.bb 1

execute if score @s pir.updates_effects.bb matches 1 run playsound ui.toast.challenge_complete ambient @a[distance=..29] ~ ~ ~ 0.5 1.5 0.5
execute if score @s pir.updates_effects.bb matches 1..200 run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 1 1

execute if score @s pir.updates_effects.bb matches 200.. if entity @s[tag=!pir.cannon.bb] run kill @s
execute if score @s pir.updates_effects.bb matches 200.. if entity @s[tag=pir.cannon.bb] run tag @s remove pir.update_done