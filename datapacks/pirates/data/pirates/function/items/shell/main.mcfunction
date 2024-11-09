
scoreboard players add @s pir.shell.bb 1
execute if score @s pir.shell.bb matches 1..158 run tp @s @e[type=item_display,limit=1,distance=..2,tag=pir.coordinate_shell]

execute if score @s pir.shell.bb matches 1 run summon item_display ~ ~ ~ {Tags:["pir.coordinate_shell"]}
execute if score @s pir.shell.bb matches 1 as @e[type=item_display,tag=pir.coordinate_shell] rotated as @p run tp @s ~ ~ ~ ~ ~
execute if score @s pir.shell.bb matches 1 run playsound minecraft:entity.item.break record @a[distance=..10]
execute if score @s pir.shell.bb matches 1 run item replace entity @s weapon.mainhand with air
execute if score @s pir.shell.bb matches 1 run particle item{item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":73009}}} ~ ~1.5 ~ 0.2 0.2 0.2 0.07 10
execute if score @s pir.shell.bb matches 1 run playsound minecraft:entity.warden.dig record @a[distance=..10] ~ ~ ~ 2 0.5
execute if score @s pir.shell.bb matches 1..159 run particle bubble_column_up ~ ~ ~ 0.3 0.6 0.3 1 10
execute if score @s pir.shell.bb matches 20..159 run particle falling_water ~ ~1.8 ~ 0.3 0.2 0.3 1 10

execute if score @s pir.shell.bb matches 20 run summon marker ~ ~ ~15 {Tags:["pir.shell_marker","pir.shell_z1"]}
execute if score @s pir.shell.bb matches 20 run summon marker ~ ~ ~-15 {Tags:["pir.shell_marker","pir.shell_z2"]}
execute if score @s pir.shell.bb matches 20 run summon marker ~15 ~ ~ {Tags:["pir.shell_marker","pir.shell_x1"]}
execute if score @s pir.shell.bb matches 20 run summon marker ~-15 ~ ~ {Tags:["pir.shell_marker","pir.shell_x2"]}
execute if score @s pir.shell.bb matches 21 at @e[type=marker,tag=pir.shell_x1] store result score @s pir.shell_coor.x1 run locate biome #is_ocean
execute if score @s pir.shell.bb matches 21 at @e[type=marker,tag=pir.shell_x2] store result score @s pir.shell_coor.x2 run locate biome #is_ocean
execute if score @s pir.shell.bb matches 21 at @e[type=marker,tag=pir.shell_z1] store result score @s pir.shell_coor.z1 run locate biome #is_ocean
execute if score @s pir.shell.bb matches 21 at @e[type=marker,tag=pir.shell_z2] store result score @s pir.shell_coor.z2 run locate biome #is_ocean

execute if score @s pir.shell.bb matches 25 run function pirates:items/shell/math

execute if score @s pir.shell.bb matches 60..159 run particle white_ash ~ ~1 ~ 0.3 0.4 0.3 1 13 force
execute if score @s pir.shell.bb matches 80..159 run effect give @s darkness 6 4 true
execute if score @s pir.shell.bb matches 158 run playsound minecraft:entity.guardian.ambient record @a[distance=..10] ~ ~ ~ 2 0.2
execute if score @s pir.shell.bb matches 158 run advancement grant @s only pirates:pirates/shell
execute if score @s pir.shell.bb matches 158 run setblock ~ ~1 ~ water
execute if score @s pir.shell.bb matches 158 run kill @e[type=marker,tag=pir.shell_marker]


execute if score @s pir.shell.bb matches 159 run kill @e[type=item_display,tag=pir.coordinate_shell,distance=..1]

execute if score @s pir.shell.bb matches 160.. run function pirates:items/shell/reset