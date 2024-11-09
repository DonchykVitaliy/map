execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] at @s run kill @e[type=interaction,tag=pir.cannon.bb,tag=!pir.two_cannon,distance=..0.5,limit=1,sort=nearest]

execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.south.rot] at @s positioned ~ ~ ~-1 run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.east.rot] at @s positioned ~-1 ~ ~ run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.west.rot] at @s positioned ~1 ~ ~ run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
execute as @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] if entity @s[tag=sp.north.rot] at @s positioned ~ ~ ~1 run kill @e[type=interaction,tag=pir.cannon.bb,tag=pir.two_cannon,distance=..0.5,limit=1,sort=nearest]
kill @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest]
loot spawn ~ ~ ~ loot pirates:cannon
kill @s
playsound block.stone.break block @a[distance=..10] ~ ~ ~