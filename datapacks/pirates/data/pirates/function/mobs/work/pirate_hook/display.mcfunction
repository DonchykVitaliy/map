#rotation
schedule function pirates:mobs/work/pirate_hook/rotation 8t append

#death
execute unless entity @e[type=vindicator,tag=pir.pirate_hook.mob,distance=..2.3] run function pirates:mobs/died/pirate_hook