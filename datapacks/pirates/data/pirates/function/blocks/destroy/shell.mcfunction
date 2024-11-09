particle minecraft:item{item:{id:"minecraft:bee_spawn_egg",components:{"minecraft:custom_model_data":73012}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,distance=..0.6,limit=1,tag=pir.shell.bb]
loot spawn ~ ~ ~ loot pirates:mysterious_shell
playsound block.stone.break block @a[distance=..10] ~ ~ ~