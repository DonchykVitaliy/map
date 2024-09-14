execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
playsound minecraft:item.bundle.drop_contents block @a[distance=..10] ~ ~ ~ 2 1
summon interaction ~ ~ ~ {Tags:["pir.bundle.bb","pir.block","pir.custom_loot"],width:0.6f,height:0.6f}
tag @s remove pir.setblock