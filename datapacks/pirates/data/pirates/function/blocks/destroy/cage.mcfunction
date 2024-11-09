execute if entity @s[tag=pir.gold_cage] run particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73007}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
execute if entity @s[tag=pir.iron_cage] run particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73008}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.cage.bb]
execute if entity @s[tag=pir.gold_cage] run loot spawn ~ ~ ~ loot pirates:parrot_cage_gold
execute if entity @s[tag=pir.iron_cage] run loot spawn ~ ~ ~ loot pirates:parrot_cage_iron
playsound block.chain.break block @a[distance=..10] ~ ~ ~
data merge entity @e[type=parrot,tag=pir.in_cage,limit=1,distance=..0.4] {NoAI:0b}
tag @e[type=parrot,distance=..0.4,tag=pir.in_cage] remove pir.in_cage