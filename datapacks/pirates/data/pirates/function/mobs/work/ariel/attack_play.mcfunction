tag @s add pir.attack_animation
#data modify entity @e[type=item_display,sort=nearest,limit=1,tag=pir.mermaid_1.mob] item.components.minecraft:custom_model_data set value 79013

summon item_display ^0.4 ^1.7 ^ {item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":79049}},Tags:["pir.mob_cliques","pir.custom_mobs"]}
execute as @e[tag=pir.mob_cliques,tag=!pir.second,limit=1,distance=..2.5,tag=!mob_cliques.rotate] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,gamemode=!creative,gamemode=!spectator] eyes
tag @e[tag=pir.mob_cliques,tag=!pir.second,limit=1,distance=..1,nbt=!{Rotation:[0.0f,0.0f]}] add mob_cliques.rotate

summon item_display ^-0.4 ^1.7 ^ {item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":79049}},Tags:["pir.mob_cliques","pir.custom_mobs","pir.second"]}
execute as @e[tag=pir.mob_cliques,tag=pir.second,limit=1,distance=..2.5,tag=!mob_cliques.rotate] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,gamemode=!creative,gamemode=!spectator] eyes
tag @e[tag=pir.mob_cliques,tag=pir.second,limit=1,distance=..1,nbt=!{Rotation:[0.0f,0.0f]}] add mob_cliques.rotate