scoreboard players add @s pir.attack_time 1

execute if score @s pir.attack_time matches 14 run playsound minecraft:item.trident.throw hostile @a[distance=..7]
execute if score @s pir.attack_time matches 14 run summon trident ~ ~1.9 ~ {Tags:["pir.ariel_triden.bb"],life:400}
execute if score @s pir.attack_time matches 14 run execute as @e[type=trident,tag=pir.ariel_triden.bb,tag=!pir.motion] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,gamemode=!creative,gamemode=!spectator] eyes
execute if score @s pir.attack_time matches 14 run execute as @e[type=trident,tag=pir.ariel_triden.bb,tag=!pir.motion] at @s run function pirates:mobs/make/ocean/ariel/trident_rotation
execute if score @s pir.attack_time matches 25.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.ariel.mob] item.components.minecraft:custom_model_data set value 79047
execute if score @s pir.attack_time matches 25.. run scoreboard players set @s pir.attack_3.refresh 45
execute if score @s pir.attack_time matches 25.. run tag @s remove pir.attack_animation_4
execute if score @s pir.attack_time matches 25.. run scoreboard players set @s pir.attack_time 0