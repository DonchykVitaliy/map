execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
playsound minecraft:block.glass.place block @a[distance=..10]
summon interaction ~ ~ ~ {Tags:["pir.bottle.bb","pir.block","pir.custom_loot"],width:0.7f,height:0.7f}
tag @s remove pir.setblock