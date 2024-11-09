tag @s add pir.damage_animation
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.mermaid_2.mob] item.components."minecraft:potion_contents".custom_color set value 1
playsound minecraft:mermaid_hurt ambient @a[distance=..10] ~ ~ ~ 0.7 1.03