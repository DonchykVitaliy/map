execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
execute if entity @s[tag=sp.south.rot] run data merge entity @s {Rotation:[0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.1f,0f],scale:[0.8f,0.8f,0.8f]}}
execute if entity @s[tag=sp.east.rot] run data merge entity @s {Rotation:[270f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.1f,0f],scale:[0.8f,0.8f,0.8f]}}
execute if entity @s[tag=sp.west.rot] run data merge entity @s {Rotation:[90f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.1f,0f],scale:[0.8f,0.8f,0.8f]}}
execute if entity @s[tag=sp.north.rot] run data merge entity @s {Rotation:[180f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.1f,0f],scale:[0.8f,0.8f,0.8f]}}
playsound minecraft:block.glass.place block @a[distance=..10]
summon interaction ~ ~ ~ {Tags:["pir.ship_in_a_bottle.bb","pir.block","pir.custom_loot"],width:0.8f,height:0.6f}
tag @s remove pir.setblock