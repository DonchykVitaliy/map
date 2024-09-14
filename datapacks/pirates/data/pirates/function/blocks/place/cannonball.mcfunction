execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp ~ ~ ~
data merge entity @s {Rotation:[0f]}
playsound minecraft:block.glass.place block @a[distance=..10] ~ ~ ~ 2 0
execute unless entity @s[tag=pir.fire_cannonball.bb] run summon interaction ~ ~ ~ {Tags:["pir.cannonball.bb","pir.block"],width:0.6f,height:0.6f}
execute if entity @s[tag=pir.fire_cannonball.bb] run summon interaction ~ ~ ~ {Tags:["pir.cannonball.bb","pir.fire_cannonball.bb","pir.block"],width:0.6f,height:0.6f}
tag @s remove pir.setblock