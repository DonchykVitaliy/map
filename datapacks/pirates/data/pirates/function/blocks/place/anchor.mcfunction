execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
execute if entity @s[tag=sp.south.rot] run data merge entity @s {Rotation:[0f]}
execute if entity @s[tag=sp.east.rot] run data merge entity @s {Rotation:[270f]}
execute if entity @s[tag=sp.west.rot] run data merge entity @s {Rotation:[90f]}
execute if entity @s[tag=sp.north.rot] run data merge entity @s {Rotation:[180f]}
execute if entity @s[tag=sp.down.rot] run data modify entity @s transformation.right_rotation set value [0f,0f,180f,1f]
playsound minecraft:block.stone.place block @a[distance=..10] ~ ~ ~ 2 0.7
summon interaction ~ ~ ~ {Tags:["pir.anchor.bb","pir.block"],width:1,height:1}
tag @s remove pir.setblock