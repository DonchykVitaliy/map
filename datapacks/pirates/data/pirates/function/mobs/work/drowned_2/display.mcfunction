#rotation
schedule function pirates:mobs/work/drowned_2/rotation 8t append

#death
execute unless entity @e[type=vindicator,tag=pir.drowned_2.mob,distance=..2.3] run function pirates:mobs/died/drowned_2