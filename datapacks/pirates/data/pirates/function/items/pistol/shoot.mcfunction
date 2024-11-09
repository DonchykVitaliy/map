#player
scoreboard players set @s pir.shoot_pistol.bb 0
tp @s ^ ^ ^ ~ ~-8
particle minecraft:campfire_cosy_smoke ^ ^1 ^1 0.4 0.7 0.4 0.02 30 normal

#sound
stopsound @a[distance=..10] player item.crossbow.shoot
playsound minecraft:shoot player @a[distance=..10] ~ ~ ~ 2 1.4

#arrow
execute as @e[type=arrow,distance=..2,nbt={inGround:0b},tag=!pir.arrow_pistol.bb] run tag @s add pir.arrow_pistol.bb
execute as @e[type=arrow,distance=..2,nbt={inGround:0b},tag=pir.arrow_pistol.bb] run tag @s add pir.custom_mobs
execute as @e[type=arrow,tag=pir.arrow_pistol.bb] run data modify entity @s damage set value 4