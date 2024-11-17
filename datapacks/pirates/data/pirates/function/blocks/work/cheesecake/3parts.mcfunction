playsound minecraft:block.snow.fall player @a[distance=..6] ~ ~ ~ 1 1.3
data remove entity @s interaction
tag @s add pir.3parts
effect give @p[limit=1] saturation 1 5 true
data modify entity @e[type=item_display,tag=pir.cheesecake.bb,distance=..1,limit=1,sort=nearest] item.components.minecraft:custom_model_data set value 73015
