execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":127}}}] run function pirates:items/harp/break
execute if entity @s[nbt=!{SelectedItem:{components:{"minecraft:damage":0}}}] run item modify entity @s weapon.mainhand pirates:harp2

playsound minecraft:harp player @a[distance=..9] ~ ~ ~ 0.4