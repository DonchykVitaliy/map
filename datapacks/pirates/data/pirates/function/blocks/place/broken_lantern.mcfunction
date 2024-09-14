execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
playsound minecraft:block.lantern.place block @a[distance=..10]
summon interaction ~ ~ ~ {Tags:["pir.broken_lantern.bb","pir.block"],width:0.5f,height:0.6f}
tag @s remove pir.setblock