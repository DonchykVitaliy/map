execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
execute if entity @s[tag=sp.south.rot] run data merge entity @s {Rotation:[0f]}
execute if entity @s[tag=sp.east.rot] run data merge entity @s {Rotation:[270f]}
execute if entity @s[tag=sp.west.rot] run data merge entity @s {Rotation:[90f]}
execute if entity @s[tag=sp.north.rot] run data merge entity @s {Rotation:[180f]}
execute if entity @s[tag=sp.south.rot] unless block ~ ~ ~-1 air run tag @s add pir.cannon_air
execute if entity @s[tag=sp.east.rot] unless block ~-1 ~ ~ air run tag @s add pir.cannon_air
execute if entity @s[tag=sp.west.rot] unless block ~1 ~ ~ air run tag @s add pir.cannon_air
execute if entity @s[tag=sp.north.rot] unless block ~ ~ ~1 air run tag @s add pir.cannon_air
execute if entity @s[tag=sp.south.rot,tag=!pir.cannon_air] run summon interaction ~ ~ ~-1 {Tags:["pir.cannon.bb","pir.block","pir.two_cannon","south.rot"],width:1,height:1}
execute if entity @s[tag=sp.east.rot,tag=!pir.cannon_air] run summon interaction ~-1 ~ ~ {Tags:["pir.cannon.bb","pir.block","pir.two_cannon","east.rot"],width:1,height:1}
execute if entity @s[tag=sp.west.rot,tag=!pir.cannon_air] run summon interaction ~1 ~ ~ {Tags:["pir.cannon.bb","pir.block","pir.two_cannon","west.rot"],width:1,height:1}
execute if entity @s[tag=sp.north.rot,tag=!pir.cannon_air] run summon interaction ~ ~ ~1 {Tags:["pir.cannon.bb","pir.block","pir.two_cannon","north.rot"],width:1,height:1}
execute if entity @s[tag=!pir.cannon_air] run playsound minecraft:block.stone.place block @a[distance=..10] ~ ~ ~ 2 0.7
execute if entity @s[tag=sp.south.rot,tag=!pir.cannon_air] run summon interaction ~ ~ ~ {Tags:["pir.cannon.bb","pir.block","pir.cannon_main.bb","south.rot"],width:1,height:1}
execute if entity @s[tag=sp.east.rot,tag=!pir.cannon_air] run summon interaction ~ ~ ~ {Tags:["pir.cannon.bb","pir.block","pir.cannon_main.bb","east.rot"],width:1,height:1}
execute if entity @s[tag=sp.west.rot,tag=!pir.cannon_air] run summon interaction ~ ~ ~ {Tags:["pir.cannon.bb","pir.block","pir.cannon_main.bb","west.rot"],width:1,height:1}
execute if entity @s[tag=sp.north.rot,tag=!pir.cannon_air] run summon interaction ~ ~ ~ {Tags:["pir.cannon.bb","pir.block","pir.cannon_main.bb","north.rot"],width:1,height:1}
execute if entity @s[tag=pir.cannon_air] run function pirates:blocks/destroy/items/cannon
tag @s remove pir.setblock