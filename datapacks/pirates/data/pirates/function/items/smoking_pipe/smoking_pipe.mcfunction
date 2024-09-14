playsound minecraft:item.flintandsteel.use block @a[distance=..10] ~ ~ ~
particle minecraft:poof ~ ~1.5 ~ 0.2 0.1 0.2 0.0001 12
effect give @s speed 20 0 true

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:damage":4}}}] run function pirates:items/smoking_pipe/smoking_pipe_break
execute if entity @s[nbt=!{SelectedItem:{components:{"minecraft:damage":0}}}] run item modify entity @s weapon.mainhand pirates:smoking_pipe

function pirates:items/smoking_pipe/smoking_pipe_poison
scoreboard players set @s pir.use_stick.bb 0