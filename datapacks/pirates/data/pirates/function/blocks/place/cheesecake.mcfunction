execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
playsound minecraft:block.wool.place block @a[distance=..10]
summon interaction ~ ~ ~ {Tags:["pir.cheesecake.bb","pir.block","pir.custom_loot"],width:0.5f,height:0.5f}
tag @s remove pir.setblock