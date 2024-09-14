execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
execute if entity @s[tag=sp.south.rot] run data merge entity @s {Rotation:[0f]}
execute if entity @s[tag=sp.east.rot] run data merge entity @s {Rotation:[270f]}
execute if entity @s[tag=sp.west.rot] run data merge entity @s {Rotation:[90f]}
execute if entity @s[tag=sp.north.rot] run data merge entity @s {Rotation:[180f]}
playsound minecraft:block.stone.place block @a[distance=..10] ~ ~ ~ 1 1.3
execute if entity @s[tag=!pir.black_candle] run summon interaction ~ ~ ~ {Tags:["pir.candle.bb","pir.custom_loot","pir.block"],width:1.01f,height:1.01f}
execute if entity @s[tag=pir.black_candle] run summon interaction ~ ~ ~ {Tags:["pir.candle.bb","pir.black_candle","pir.custom_loot","pir.block"],width:1.01f,height:1.01f}
tag @s remove pir.setblock