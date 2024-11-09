particle minecraft:item{item:{id:"minecraft:ghast_spawn_egg",components:{"minecraft:custom_model_data":73000}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,distance=..0.6,limit=1,tag=pir.map1.bb]
loot spawn ~ ~ ~ loot pirates:map_1
playsound item.book.put block @a[distance=..10] ~ ~ ~