data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.skeleton_3.mob,tag=!pir.attack_animation] item.components.minecraft:custom_model_data set value 79331

scoreboard players add @s pir.mob_step.bb 1
execute if score @s pir.mob_step.bb matches 20.. run playsound entity.skeleton.step hostile @a[distance=..7] ~ ~ ~
execute if score @s pir.mob_step.bb matches 20.. run scoreboard players set @s pir.mob_step.bb 0

tag @s add pir.animation_move
