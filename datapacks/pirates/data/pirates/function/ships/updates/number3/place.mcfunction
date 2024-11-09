data merge entity @s {brightness:{sky:20,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"silverfish_spawn_egg",components:{"minecraft:custom_model_data":73013},count:1}}
tag @s remove pir.up3
tag @s remove pir.up_cannon
tag @s remove pir.update.bb
tag @s add pir.block
tag @s add pir.cannon.bb
tag @s add pir.full
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
