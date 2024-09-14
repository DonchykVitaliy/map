execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
execute if entity @s[tag=sp.south.rot] run data merge entity @s {Rotation:[0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]}}
execute if entity @s[tag=sp.east.rot] run data merge entity @s {Rotation:[270f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]}}
execute if entity @s[tag=sp.west.rot] run data merge entity @s {Rotation:[90f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]}}
execute if entity @s[tag=sp.north.rot] run data merge entity @s {Rotation:[180f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]}}
playsound minecraft:block.wood.place block @a[distance=..10]
setblock ~ ~ ~ barrel{CustomName:'{"translate":"pir.barrel.bb"}'}
tag @s remove pir.setblock