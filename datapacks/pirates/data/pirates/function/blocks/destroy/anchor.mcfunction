particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73000}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.anchor.bb]
loot spawn ~ ~ ~ loot pirates:anchor
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 2 0.7