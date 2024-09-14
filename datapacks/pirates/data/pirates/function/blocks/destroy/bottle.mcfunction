particle minecraft:block{block_state:"minecraft:sand"} ~ ~0.5 ~ 0 0.2 0 1 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.bottle.bb]
loot spawn ~ ~ ~ loot pirates:bottle_with_map
playsound block.sand.break block @a[distance=..10] ~ ~ ~