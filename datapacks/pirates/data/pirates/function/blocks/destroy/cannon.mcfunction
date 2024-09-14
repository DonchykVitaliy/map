execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] at @s run kill @e[type=interaction,tag=pir.cannon.bb,tag=!pir.two_cannon,distance=..0.5,limit=1,sort=nearest]

execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.south.rot] at @s positioned ~ ~ ~-1 run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.east.rot] at @s positioned ~-1 ~ ~ run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.west.rot] at @s positioned ~1 ~ ~ run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.north.rot] at @s positioned ~ ~ ~1 run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
kill @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest]
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 2 0.7
particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73013}}} ~ ~0.5 ~ 0 0.2 0 0.1 15
loot spawn ~ ~ ~ loot pirates:cannon
kill @s