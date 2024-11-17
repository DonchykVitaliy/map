playsound minecraft:block.snow.fall player @a[distance=..6] ~ ~ ~ 1 1.3
tag @s add pir.1parts
data modify entity @e[type=item_display,tag=pir.cheesecake.bb,distance=..1,limit=1,sort=nearest] item.components.minecraft:custom_model_data set value 73017
effect give @p[limit=1] saturation 1 5 true
data remove entity @s interaction