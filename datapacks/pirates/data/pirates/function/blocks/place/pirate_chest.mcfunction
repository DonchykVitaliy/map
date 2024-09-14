execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
execute if entity @s[tag=sp.south.rot] run data merge entity @s {Rotation:[0f]}
execute if entity @s[tag=sp.east.rot] run data merge entity @s {Rotation:[270f]}
execute if entity @s[tag=sp.west.rot] run data merge entity @s {Rotation:[90f]}
execute if entity @s[tag=sp.north.rot] run data merge entity @s {Rotation:[180f]}
playsound minecraft:block.wood.place block @a[distance=..10]
execute if entity @s[tag=sp.south.rot] run setblock ~ ~ ~ chest[facing=south]{Lock:"KanyeWestVulturesPartI"}
execute if entity @s[tag=sp.east.rot] run setblock ~ ~ ~ chest[facing=east]{Lock:"KanyeWestVulturesPartI"}
execute if entity @s[tag=sp.west.rot] run setblock ~ ~ ~ chest[facing=west]{Lock:"KanyeWestVulturesPartI"}
execute if entity @s[tag=sp.north.rot] run setblock ~ ~ ~ chest[facing=north]{Lock:"KanyeWestVulturesPartI"}
summon interaction ~ ~-0.01 ~ {Tags:["pir.pirate_chest.bb","pir.block"],width:0.9f,height:0.9f}
tag @s add pir.place_pirate_chest.bb