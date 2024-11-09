#rotation
schedule function pirates:mobs/work/drowned_1/rotation 8t append

#death
execute unless entity @e[type=pillager,tag=pir.drowned_1.mob,distance=..2.3] run function pirates:mobs/died/drowned_1