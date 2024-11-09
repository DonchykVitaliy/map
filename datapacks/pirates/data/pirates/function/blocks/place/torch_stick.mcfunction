execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
setblock ~ ~1 ~ torch
playsound minecraft:block.bamboo_wood.place block @a[distance=..10]
summon interaction ~ ~ ~ {Tags:["pir.torch_stick.bb","pir.block","pir.custom_loot"],width:0.25f,height:1f}
tag @s remove pir.setblock