execute if entity @s[tag=pir.fire_candle] if block ~ ~ ~ light run setblock ~ ~ ~ air
execute if entity @s[tag=!pir.black_candle] run particle minecraft:item{item:{id:"minecraft:bee_spawn_egg",components:{"minecraft:custom_model_data":73007}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
execute if entity @s[tag=pir.black_candle] run particle minecraft:item{item:{id:"minecraft:bee_spawn_egg",components:{"minecraft:custom_model_data":73009}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
kill @s
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.candle.bb]
execute if entity @s[tag=!pir.black_candle] run loot spawn ~ ~ ~ loot pirates:candle_on_the_rack
execute if entity @s[tag=pir.black_candle] run loot spawn ~ ~ ~ loot pirates:candle_on_the_iron_rack
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 1 1.3