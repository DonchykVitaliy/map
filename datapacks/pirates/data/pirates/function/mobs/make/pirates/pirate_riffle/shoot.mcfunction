stopsound @a[distance=..14] player item.crossbow.shoot
playsound minecraft:shoot player @a[distance=..14] ~ ~ ~ 4 0.8
particle minecraft:campfire_cosy_smoke ^ ^1.4 ^1 0.4 0.7 0.4 0.03 20 normal

execute as @e[type=arrow,distance=..2.5,nbt={inGround:0b},tag=!pir.arrow_pirate] run tag @s add pir.arrow_pirate
execute as @e[type=arrow,tag=!pir.arrow_pistol.bb,tag=pir.arrow_pirate] run tag @s add pir.custom_mobs
execute as @e[type=arrow,tag=pir.arrow_pirate,tag=!pir.arrow_pistol.bb] run data modify entity @s damage set value 12
execute as @e[type=arrow,tag=pir.arrow_pirate,tag=!pir.arrow_pistol.bb] run tag @s add pir.arrow_pistol.bb

data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.pirate_riffle.mob,tag=!pir.attack_animation] item.components.minecraft:custom_model_data set value 79953
execute as @e[type=item_display,tag=pir.pirate_riffle.mob,limit=1,sort=nearest,tag=!pir.attack_animation,distance=..2] run tag @s add pir.attack_animation
