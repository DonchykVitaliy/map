particle minecraft:item{item:{id:"minecraft:gold_ingot"}} ~ ~0.3 ~ 0 0.2 0 0.1 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.golden_ingot.bb]
summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",count:1b}}
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 1 1.3