execute if entity @s[tag=!pir.fire_candle] if entity @a[distance=..1.5,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run function pirates:blocks/work/candle/fire

execute if entity @s[tag=pir.fire_candle] if data entity @s {interaction:{}} run function pirates:blocks/work/candle/air

data remove entity @s interaction