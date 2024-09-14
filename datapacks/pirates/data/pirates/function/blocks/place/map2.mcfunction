execute align xyz positioned ~0.5 ~0.505 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
playsound minecraft:item.book.put block @a[distance=..10]
summon interaction ~ ~ ~ {Tags:["pir.map2.bb","pir.block","pir.custom_loot"],width:1f,height:0.4f}
tag @s remove pir.setblock