execute as @e[type=item_display,tag=pir.pirate_riffle.mob,tag=!pir.mob_rot] at @s run data merge entity @s {Rotation:[0f,0f]}
execute as @e[type=item_display,tag=pir.pirate_riffle.mob,tag=!pir.mob_rot] if data entity @s Rotation[0] run tag @s add pir.mob_rot
execute as @e[type=item_display,tag=pir.pirate_riffle.mob] at @s run data modify entity @s Rotation[0] set from entity @e[type=pillager,tag=pir.pirate_riffle.mob,distance=..2.5,sort=nearest,limit=1] Rotation[0]

schedule clear pirates:mobs/work/pirate_riffle/rotation
