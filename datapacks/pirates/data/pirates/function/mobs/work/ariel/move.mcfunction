execute if entity @s[tag=!pir.second_state] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.ariel.mob,tag=!pir.attack_animation] item.components.minecraft:custom_model_data set value 79041
execute if entity @s[tag=pir.second_state] run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.ariel.mob,tag=!pir.attack_animation] item.components.minecraft:custom_model_data set value 79048
tag @s add pir.animation_move
