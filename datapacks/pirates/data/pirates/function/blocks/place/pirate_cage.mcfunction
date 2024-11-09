execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
playsound minecraft:block.chain.place block @a[distance=..10] ~ ~ ~ 2 0.7
execute if entity @s[tag=pir.no_skeleton] run summon interaction ~ ~ ~ {Tags:["pir.pirate_cage.bb","pir.block","pir.no_skeleton"],width:1f,height:2f}
execute if entity @s[tag=!pir.no_skeleton] run summon interaction ~ ~ ~ {Tags:["pir.pirate_cage.bb","pir.block"],width:1f,height:2f}
tag @s remove pir.setblock