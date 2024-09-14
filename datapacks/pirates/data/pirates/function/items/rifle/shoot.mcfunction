#player
scoreboard players set @s pir.shoot_rifle.bb 0
tp @s ^ ^ ^ ~ ~-17
particle minecraft:campfire_cosy_smoke ^ ^1 ^1 0.4 0.7 0.4 0.03 70 normal
stopsound @a[distance=..5] player entity.arrow.hit

#sound
stopsound @a[distance=..10] player item.crossbow.shoot
playsound minecraft:shoot player @a[distance=..10] ~ ~ ~ 4 0.8

#arrow
execute as @e[type=arrow,distance=..2,nbt={inGround:0b},tag=!pir.arrow_rifle.bb] run tag @s add pir.arrow_rifle.bb
execute as @e[type=arrow,distance=..2,nbt={inGround:0b},tag=pir.arrow_rifle.bb] run tag @s add pir.custom_mobs
execute as @e[type=arrow,tag=pir.arrow_rifle.bb] run data modify entity @s damage set value 6