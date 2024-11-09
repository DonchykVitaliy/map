scoreboard players add @s pir.cannon_shoot.bb 1

execute if score @s pir.cannon_shoot.bb matches 1 run data modify entity @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] item.components.minecraft:custom_model_data set value 73014
execute if score @s pir.cannon_shoot.bb matches 1 run item modify entity @a[limit=1,distance=..2.4,sort=nearest,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] weapon.mainhand pirates:flint

execute unless entity @s[scores={pir.cannon_destroy.bb=0..10}] run scoreboard players set @s pir.cannon_destroy.bb 0

execute if score @s pir.cannon_destroy.bb matches 5.. if score @s pir.cannon_shoot.bb matches 1 run function pirates:blocks/work/cannon/destroy

execute if score @s pir.cannon_shoot.bb matches 1 run playsound entity.tnt.primed block @a[distance=..10] ~ ~ ~
execute if score @s pir.cannon_shoot.bb matches 39 run playsound entity.generic.explode block @a[distance=..10] ~ ~ ~ 2 1.4
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=south.rot] run summon armor_stand ~ ~0.5 ~-0.8 {Motion:[0.0,0.25,-2.0],Tags:["pir.cannon_tnt.bb","south.rot"],Invulnerable:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:item_display",Tags:["pir.cannon_tnt.bb"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73015},count:1b}}]}
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=north.rot] run summon armor_stand ~ ~0.5 ~0.8 {Motion:[0.0,0.25,2.0],Tags:["pir.cannon_tnt.bb","north.rot"],Invulnerable:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:item_display",Tags:["pir.cannon_tnt.bb"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73015},count:1b}}]}
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=east.rot] run summon armor_stand ~-0.8 ~0.5 ~ {Motion:[-2.0,0.25,0.0],Tags:["pir.cannon_tnt.bb","east.rot"],Invulnerable:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:item_display",Tags:["pir.cannon_tnt.bb"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73015},count:1b}}]}
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=west.rot] run summon armor_stand ~0.8 ~0.5 ~ {Motion:[2.0,0.25,0.0],Tags:["pir.cannon_tnt.bb","west.rot"],Invulnerable:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:item_display",Tags:["pir.cannon_tnt.bb"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:silverfish_spawn_egg",components:{"minecraft:custom_model_data":73015},count:1b}}]}
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=pir.fire_ball] run tag @e[tag=pir.cannon_tnt.bb,type=armor_stand,distance=..2,limit=1,sort=nearest] add pir.fire_ball

execute if score @s pir.cannon_shoot.bb matches 40 run data remove entity @s interaction

execute if score @s pir.cannon_shoot.bb matches 40 run tag @s remove pir.cannon_charge
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=south.rot] positioned ~ ~ ~1 run tag @e[tag=pir.cannon_main.bb,distance=..0.8,limit=1,sort=nearest] remove pir.cannon_charge
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=east.rot] positioned ~1 ~ ~ run tag @e[tag=pir.cannon_main.bb,distance=..0.4,limit=1,sort=nearest] remove pir.cannon_charge
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=west.rot] positioned ~-1 ~ ~ run tag @e[tag=pir.cannon_main.bb,distance=..0.4,limit=1,sort=nearest] remove pir.cannon_charge
execute if score @s pir.cannon_shoot.bb matches 40 if entity @s[tag=north.rot] positioned ~ ~ ~-1 run tag @e[tag=pir.cannon_main.bb,distance=..0.4,limit=1,sort=nearest] remove pir.cannon_charge

execute if score @s pir.cannon_shoot.bb matches 40 run data modify entity @e[type=item_display,tag=pir.cannon.bb,distance=..1.5,limit=1,sort=nearest] item.components.minecraft:custom_model_data set value 73013
execute if score @s pir.cannon_shoot.bb matches 40 run tag @s remove pir.fire_ball
execute if score @s pir.cannon_shoot.bb matches 41 run tag @s remove pir.cannon_shoot
execute if score @s pir.cannon_shoot.bb matches 41 run scoreboard players add @a[distance=..3] pir.quest_cannon 1
execute if score @s pir.cannon_shoot.bb matches 41 run advancement grant @a[distance=..4] only pirates:pirates/cannon
execute if score @s pir.cannon_shoot.bb matches 41 if score @s pir.cannon_destroy.bb matches ..4 run scoreboard players add @s pir.cannon_destroy.bb 1
execute if score @s pir.cannon_shoot.bb matches 41 run scoreboard players set @s pir.cannon_shoot.bb 0