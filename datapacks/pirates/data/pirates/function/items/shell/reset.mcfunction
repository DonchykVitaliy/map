
tag @s remove pir.shell_used.bb
scoreboard players set @s pir.shell.bb 0
#scoreboard players add @s pir.shell_second.bb 1

execute if score @s pir.shell_coor.x1 matches 1.. store result storage shell_x input.x int 1 run scoreboard players get @s pir.shell_coor.x1
execute if score @s pir.shell_coor.z1 matches 1.. store result storage shell_z input.z int 1 run scoreboard players get @s pir.shell_coor.z1
execute if score @s pir.shell_coor.x2 matches 1.. store result storage shell_x input.x int 1 run scoreboard players get @s pir.shell_coor.x2
execute if score @s pir.shell_coor.z2 matches 1.. store result storage shell_z input.z int 1 run scoreboard players get @s pir.shell_coor.z2

execute if score @s pir.shell_coor.x1 matches 1.. run function pirates:items/shell/tp_x with storage shell_x input
execute if score @s pir.shell_coor.x2 matches 1.. run function pirates:items/shell/tp_x2 with storage shell_x input
execute if score @s pir.shell_coor.z1 matches 1.. run function pirates:items/shell/tp_z with storage shell_z input
execute if score @s pir.shell_coor.z2 matches 1.. run function pirates:items/shell/tp_z2 with storage shell_z input

#execute if score @s pir.shell_second.bb matches 2.. run function pirates:items/shell/tp_up
