tag @s add pir.attack_animation
data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.davy_jones.mob] item.components.minecraft:custom_model_data set value 79383

execute store result score @s pir.poison_chans.bb run random value 0..2
execute if score @s pir.poison_chans.bb matches 2 run effect give @a[distance=..2,gamemode=!creative,gamemode=!spectator,limit=1,nbt=!{HurtTime:0s}] poison 3 0 false
execute if score @s pir.poison_chans.bb matches 2 run scoreboard players set @s pir.poison_chans.bb 0