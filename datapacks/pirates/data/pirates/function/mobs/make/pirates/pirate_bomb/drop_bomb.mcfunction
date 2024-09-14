playsound minecraft:entity.snowball.throw player @a[distance=..8] ~ ~ ~ 0.6 0.5
summon armor_stand ~ ~1.2 ~ {Tags:["pir.bomb.bb"],Invulnerable:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:item_display",Tags:["pir.bomb.bb"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.6f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:carrot_on_a_stick",components:{custom_model_data:73003},count:1b}}]}
execute as @e[type=armor_stand,tag=pir.bomb.bb,tag=!pir.motion] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=armor_stand,tag=pir.bomb.bb,tag=!pir.motion] at @s run function pirates:mobs/make/pirates/pirate_bomb/bomb_rotation
