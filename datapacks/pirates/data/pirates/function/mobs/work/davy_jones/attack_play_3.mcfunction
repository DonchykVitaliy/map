tag @s add pir.attack_animation_3
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] item.components.minecraft:custom_model_data set value 79385
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] transformation.translation set value [0f,-0.5f,0f]
effect give @s slowness infinite 255 true
