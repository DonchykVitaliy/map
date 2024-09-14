execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.38f,0f],scale:[1f,1f,1f]}}
playsound minecraft:block.stone.place block @a[distance=..10] ~ ~ ~ 2 2
summon interaction ~ ~0.33 ~ {Tags:["pir.coconout.bb","pir.block"],width:0.6f,height:0.7f}
tag @s remove pir.setblock