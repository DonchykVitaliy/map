scoreboard players add @s pir.attack_time 1

#execute if score @s pir.attack_time matches 1..10 at @s run tp ^ ^0.01 ^0.5
execute if score @s pir.attack_time matches 1 run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.boss.mob] item.components.minecraft:custom_model_data set value 79217

execute if score @s pir.attack_time matches 12 run playsound minecraft:shoot player @a[distance=..14] ~ ~ ~ 2 1.4
execute if score @s pir.attack_time matches 12 run particle minecraft:campfire_cosy_smoke ^ ^1.4 ^1 0.4 0.3 0.4 0.02 10 normal
execute if score @s pir.attack_time matches 12 run summon arrow ~ ~1.2 ~ {Tags:["pir.boss_arrow.bb","pir.arrow_pistol.bb"],damage:4}
execute if score @s pir.attack_time matches 12 as @e[type=arrow,tag=pir.boss_arrow.bb,tag=!pir.motion] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,gamemode=!creative,gamemode=!spectator] eyes
execute if score @s pir.attack_time matches 12 as @e[type=arrow,tag=pir.boss_arrow.bb,tag=!pir.motion] at @s run function pirates:mobs/make/pirates/boss/arrow_rotation

execute if score @s pir.attack_time matches 40.. run data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.boss.mob] item.components.minecraft:custom_model_data set value 79210
execute if score @s pir.attack_time matches 40.. run effect clear @s slowness
execute if entity @s[tag=!pir.second_state] if score @s pir.attack_time matches 40.. run scoreboard players set @s pir.attack_2.refresh 20
execute if entity @s[tag=pir.second_state] if score @s pir.attack_time matches 40.. run scoreboard players set @s pir.attack_2.refresh 10
execute if score @s pir.attack_time matches 40.. run scoreboard players add @s pir.boss_pistol.refresh 1
execute if score @s pir.attack_time matches 40.. run tag @s remove pir.attack_animation_2
execute if score @s pir.attack_time matches 40.. run scoreboard players set @s pir.attack_time 0
