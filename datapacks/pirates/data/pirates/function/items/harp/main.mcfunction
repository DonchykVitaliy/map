execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":23}}}] run function pirates:items/harp/break
execute if entity @s[nbt=!{SelectedItem:{components:{"minecraft:damage":0}}}] run item modify entity @s weapon.mainhand pirates:harp

playsound minecraft:harp player @a[distance=..9] ~ ~ ~ 0.4
particle heart ~ ~0.6 ~ 0.3 0.5 0.3 3 7
scoreboard players set @s pir.harp.bb 5
advancement grant @s only pirates:pirates/harp

scoreboard players set @s pir.use_stick.bb 0