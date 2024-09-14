#######################
#       Pirates       #
#      by BigSTy      #
#######################

execute if entity @s[y_rotation=-30..30] run tag @s add sp.north.rot
execute if entity @s[y_rotation=31..120] run tag @s add sp.east.rot
execute if entity @s[y_rotation=121..180] run tag @s add sp.south.rot
execute if entity @s[y_rotation=-180..-130] run tag @s add sp.south.rot
execute if entity @s[y_rotation=-131..-31] run tag @s add sp.west.rot
tag @s add pir.rotation_done