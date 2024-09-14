execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.05f,0f],scale:[0.9f,0.9f,0.9f]}}
playsound minecraft:block.chain.place block @a[distance=..10]
execute if entity @s[tag=pir.iron_cage] run summon interaction ~ ~ ~ {Tags:["pir.cage.bb","pir.block","pir.iron_cage"],width:0.9f,height:0.9f}
execute if entity @s[tag=pir.gold_cage] run summon interaction ~ ~ ~ {Tags:["pir.cage.bb","pir.block","pir.gold_cage"],width:0.9f,height:0.9f}
tag @s remove pir.setblock