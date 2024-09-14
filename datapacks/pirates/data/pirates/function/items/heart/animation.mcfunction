
scoreboard players add @s pir.heart.bb 1
execute if score @s pir.heart.bb matches 1..158 run tp @s @e[type=item_display,limit=1,distance=..2,tag=pir.coordinate_heart]

execute if score @s pir.heart.bb matches 1 run summon item_display ~ ~ ~ {Tags:["pir.coordinate_heart"]}
execute if score @s pir.heart.bb matches 1 as @e[type=item_display,tag=pir.coordinate_heart] rotated as @p run tp @s ~ ~ ~ ~ ~
execute if score @s pir.heart.bb matches 1 run playsound minecraft:entity.warden.dig record @a[distance=..10] ~ ~ ~ 2 0.5
execute if score @s pir.heart.bb matches 1..159 run particle entity_effect{color:[0.000,0.490,0.392,1.00]} ~ ~ ~ 0.3 0.6 0.3 1 6
execute if score @s pir.heart.bb matches 20..159 run particle enchanted_hit ~ ~1 ~ 0.3 0.4 0.3 0.3 5

execute if score @s pir.heart.bb matches 50 run attribute @s minecraft:generic.scale base set 0.95
execute if score @s pir.heart.bb matches 60 run attribute @s minecraft:generic.scale base set 0.90
execute if score @s pir.heart.bb matches 70 run attribute @s minecraft:generic.scale base set 0.85
execute if score @s pir.heart.bb matches 80 run attribute @s minecraft:generic.scale base set 0.80
execute if score @s pir.heart.bb matches 90 run attribute @s minecraft:generic.scale base set 0.75
execute if score @s pir.heart.bb matches 100 run attribute @s minecraft:generic.scale base set 0.70
execute if score @s pir.heart.bb matches 110 run attribute @s minecraft:generic.scale base set 0.65
execute if score @s pir.heart.bb matches 120 run attribute @s minecraft:generic.scale base set 0.60
execute if score @s pir.heart.bb matches 130 run attribute @s minecraft:generic.scale base set 0.55
execute if score @s pir.heart.bb matches 140 run attribute @s minecraft:generic.scale base set 0.5

execute if score @s pir.heart.bb matches 50..159 run particle white_ash ~ ~1 ~ 0.3 0.4 0.3 1 13 force
execute if score @s pir.heart.bb matches 80..159 run effect give @s darkness 4 4 true
execute if score @s pir.heart.bb matches 158 run playsound minecraft:entity.guardian.ambient record @a[distance=..10] ~ ~ ~ 2 0.2
execute if score @s pir.heart.bb matches 158 run advancement grant @s only pirates:pirates/heart
execute if score @s pir.heart.bb matches 158 run kill @e[type=marker,tag=pir.heart_marker]


execute if score @s pir.heart.bb matches 159 run kill @e[type=item_display,tag=pir.coordinate_heart,distance=..1]

execute if score @s pir.heart.bb matches 160.. run function pirates:items/heart/teleport