#######################
#       Pirates       #
#      by BigSTy      #
#######################

execute at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute if entity @s[y_rotation=-30..30] run tag @s add sp.north.rot
execute if entity @s[y_rotation=31..120] run tag @s add sp.east.rot
execute if entity @s[y_rotation=121..180] run tag @s add sp.south.rot
execute if entity @s[y_rotation=-180..-130] run tag @s add sp.south.rot
execute if entity @s[y_rotation=-131..-31] run tag @s add sp.west.rot

execute if entity @s[x_rotation=-90..-10] run tag @s add sp.down.rot

tag @s add pir.rotation_done