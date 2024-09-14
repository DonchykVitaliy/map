#rotation
schedule function pirates:mobs/work/skeleton_2/rotation 8t append

#death
execute unless entity @e[type=vindicator,tag=pir.skeleton_2.mob,distance=..2.3] run function pirates:mobs/died/skeleton_2