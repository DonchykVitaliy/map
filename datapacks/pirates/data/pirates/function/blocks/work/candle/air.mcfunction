data remove entity @s interaction
execute as @e[type=item_display,distance=..0.5,limit=1,sort=nearest,tag=pir.candle.bb,tag=!pir.black_candle] run data modify entity @s item.components.minecraft:custom_model_data set value 73007
execute as @e[type=item_display,distance=..0.5,limit=1,sort=nearest,tag=pir.candle.bb,tag=pir.black_candle] run data modify entity @s item.components.minecraft:custom_model_data set value 73009
playsound minecraft:block.candle.extinguish block @a[distance=..10] ~ ~ ~
tag @s remove pir.fire_candle
execute if block ~ ~ ~ light run setblock ~ ~ ~ air