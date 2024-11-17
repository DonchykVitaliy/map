#rotation
schedule function pirates:mobs/work/pirate_riffle/rotation 8t append

#death
execute unless entity @e[type=pillager,tag=pir.pirate_riffle.mob,distance=..2.3] run function pirates:mobs/died/pirate_riffle