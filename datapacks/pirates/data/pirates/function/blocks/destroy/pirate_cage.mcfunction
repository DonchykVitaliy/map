execute if entity @s[tag=pir.no_skeleton] run particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73009}}} ~ ~1 ~ 0 0.2 0 0.07 15
execute if entity @s[tag=!pir.no_skeleton] run particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73006}}} ~ ~1 ~ 0 0.2 0 0.07 15
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.pirate_cage.bb]
execute if entity @s[tag=pir.no_skeleton] run loot spawn ~ ~ ~ loot pirates:pirate_cage_loot1
execute if entity @s[tag=!pir.no_skeleton] run loot spawn ~ ~ ~ loot pirates:pirate_cage_loot
playsound block.chain.break block @a[distance=..10] ~ ~ ~ 2 0.7