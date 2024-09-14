execute if entity @s[tag=!pir.fire_cannonball.bb] run particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73005}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
execute if entity @s[tag=pir.fire_cannonball.bb] run particle minecraft:item{item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73012}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,tag=pir.cannonball.bb,distance=..0.5,limit=1,sort=nearest]
execute if entity @s[tag=!pir.fire_cannonball.bb] run loot spawn ~ ~ ~ loot pirates:cannonball
execute if entity @s[tag=pir.fire_cannonball.bb] run loot spawn ~ ~ ~ loot pirates:fire_cannonball
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 2 0