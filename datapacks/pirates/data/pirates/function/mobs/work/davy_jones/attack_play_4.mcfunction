tag @s add pir.attack_animation4
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] item.components.minecraft:custom_model_data set value 79386
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] transformation.translation set value [0f,-0.5f,0f]
playsound entity.player.attack.sweep hostile @a[distance=..7]
damage @a[distance=..6,sort=nearest,limit=1,gamemode=!creative,gamemode=!spectator] 15 mob_attack by @s
effect give @a[distance=..6,gamemode=!creative,gamemode=!spectator,limit=1,sort=nearest] poison 3 1 false
