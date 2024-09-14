particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73002}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.bundle.bb]
loot spawn ~ ~ ~ loot pirates:bundle_loot
playsound minecraft:item.bundle.drop_contents block @a[distance=..10] ~ ~ ~ 2 1.5