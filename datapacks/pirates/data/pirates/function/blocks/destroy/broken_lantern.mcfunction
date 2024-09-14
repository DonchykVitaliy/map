particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73017}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.broken_lantern.bb]
loot spawn ~ ~ ~ loot pirates:broken_lantern
playsound block.lantern.break block @a[distance=..10] ~ ~ ~ 2 0.7