
execute as @e[type=drowned,tag=pir.ariel.mob] at @s unless entity @e[type=player,distance=..12] run effect give @s instant_damage 1 0 true

schedule clear pirates:mobs/work/ariel/regeneration