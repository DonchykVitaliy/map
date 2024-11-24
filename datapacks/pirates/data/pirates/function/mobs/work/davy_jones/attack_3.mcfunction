scoreboard players add @s pir.attack_time 1

execute if score @s pir.attack_time matches 1 run playsound minecraft:item.bundle.insert hostile @a[distance=..7] ~ ~ ~ 1 0.7
execute if score @s pir.attack_time matches 1.. run particle minecraft:enchant ~2 ~ ~2 0.2 0.4 0.2 0.1 4
execute if score @s pir.attack_time matches 1.. run particle minecraft:enchant ~-2 ~ ~-2 0.2 0.4 0.2 0.1 4
execute if score @s pir.attack_time matches 1.. run particle minecraft:enchant ~-2 ~ ~2 0.2 0.4 0.2 0.1 4
execute if score @s pir.attack_time matches 1.. run particle minecraft:enchant ~2 ~ ~-2 0.2 0.4 0.2 0.1 4
execute if score @s pir.attack_time matches 28 run playsound minecraft:item.trident.hit_ground hostile @a[distance=..7] ~ ~ ~ 2 0.8
execute if score @s pir.attack_time matches 32 run summon creeper ~2 ~ ~2 {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"translate":"pir.mob_ocean.davy_jones.bb"}'}
execute if score @s pir.attack_time matches 32 run summon creeper ~2 ~ ~-2 {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"translate":"pir.mob_ocean.davy_jones.bb"}'}
execute if score @s pir.attack_time matches 32 run summon creeper ~-2 ~ ~2 {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"translate":"pir.mob_ocean.davy_jones.bb"}'}
execute if score @s pir.attack_time matches 32 run summon creeper ~-2 ~ ~-2 {ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"translate":"pir.mob_ocean.davy_jones.bb"}'}
execute if score @s pir.attack_time matches 46.. run effect clear @s slowness
execute if score @s pir.attack_time matches 46.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.boss.mob] item.components.minecraft:custom_model_data set value 79210
execute if entity @s[tag=!pir.second_state] if score @s pir.attack_time matches 46.. run scoreboard players set @s pir.attack_3.refresh 800
execute if entity @s[tag=pir.second_state] if score @s pir.attack_time matches 46.. run scoreboard players set @s pir.attack_3.refresh 600
execute if score @s pir.attack_time matches 46.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] transformation.translation set value [0f,0f,0f]
execute if score @s pir.attack_time matches 46.. run tag @s remove pir.attack_animation_3
execute if score @s pir.attack_time matches 46.. run scoreboard players set @s pir.attack_time 0
