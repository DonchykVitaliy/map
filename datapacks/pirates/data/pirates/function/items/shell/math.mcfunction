execute if score @s pir.shell_coor.x1 < @s pir.shell_coor.x2 run scoreboard players reset @s pir.shell_coor.x2
execute if score @s pir.shell_coor.x1 > @s pir.shell_coor.x2 run scoreboard players reset @s pir.shell_coor.x1
execute if score @s pir.shell_coor.x1 = @s pir.shell_coor.x2 run scoreboard players reset @s pir.shell_coor.x2

execute if score @s pir.shell_coor.z1 < @s pir.shell_coor.z2 run scoreboard players reset @s pir.shell_coor.z2
execute if score @s pir.shell_coor.z1 > @s pir.shell_coor.z2 run scoreboard players reset @s pir.shell_coor.z1
execute if score @s pir.shell_coor.z1 = @s pir.shell_coor.z2 run scoreboard players reset @s pir.shell_coor.z2

#remove

execute if score @s pir.shell_coor.x1 < @s pir.shell_coor.z1 run scoreboard players reset @s pir.shell_coor.z1
execute if score @s pir.shell_coor.x1 > @s pir.shell_coor.z1 run scoreboard players reset @s pir.shell_coor.x1
execute if score @s pir.shell_coor.x2 < @s pir.shell_coor.z2 run scoreboard players reset @s pir.shell_coor.z2
execute if score @s pir.shell_coor.x2 > @s pir.shell_coor.z2 run scoreboard players reset @s pir.shell_coor.x2

execute if score @s pir.shell_coor.x1 = @s pir.shell_coor.z1 run scoreboard players reset @s pir.shell_coor.z1
execute if score @s pir.shell_coor.x2 = @s pir.shell_coor.z2 run scoreboard players reset @s pir.shell_coor.z2