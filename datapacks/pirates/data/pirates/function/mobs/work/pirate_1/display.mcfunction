#rotation
schedule function pirates:mobs/work/pirate_1/rotation 8t append

#death
execute unless entity @e[type=vindicator,tag=pir.pirate_1.mob,distance=..2.3] run function pirates:mobs/died/pirate_1