execute if block ~ ~1 ~ torch run setblock ~ ~1 ~ air
particle minecraft:block{block_state:"minecraft:bamboo"} ~ ~0.5 ~ 0 0.2 0 1 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.torch_stick.bb]
loot spawn ~ ~ ~ loot pirates:torch_stick
playsound minecraft:block.bamboo_wood.break block @a[distance=..10] ~ ~ ~ 2 0.7