execute as @e[type=item_display,tag=pir.candle.bb] at @s if entity @e[type=interaction,tag=pir.fire_candle,distance=..0.5] run playsound minecraft:block.candle.ambient block @a[distance=..7] ~ ~ ~

schedule clear pirates:blocks/work/candle/sound