setblock ~ ~ ~ light[level=12]
execute as @e[type=item_display,distance=..0.5,limit=1,sort=nearest,tag=pir.candle.bb,tag=!pir.black_candle] run data modify entity @s item.components.minecraft:custom_model_data set value 73008
execute as @e[type=item_display,distance=..0.5,limit=1,sort=nearest,tag=pir.candle.bb,tag=pir.black_candle] run data modify entity @s item.components.minecraft:custom_model_data set value 73010
item modify entity @a[distance=..1.5,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}},limit=1,sort=nearest] weapon.mainhand pirates:flint
execute as @a[distance=..1.5,nbt={SelectedItem:{id:"minecraft:flint_and_steel",tag:{Damage:64}}},limit=1,sort=nearest] at @s run function pirates:blocks/work/candle/break_flint
playsound minecraft:item.flintandsteel.use block @a[distance=..10] ~ ~ ~
data remove entity @s interaction
tag @s add pir.fire_candle