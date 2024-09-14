tag @s add pir.damage_animation
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.drowned_2.mob] item.components."minecraft:potion_contents".custom_color set value 1
playsound entity.drowned.hurt hostile @a[distance=..10] ~ ~ ~