kill @s
execute if entity @s[tag=!pir.black_candle] run loot spawn ~ ~ ~ loot pirates:candle_on_the_rack
execute if entity @s[tag=pir.black_candle] run loot spawn ~ ~ ~ loot pirates:candle_on_the_iron_rack
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 1 1.3