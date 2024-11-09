#bottle with map
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73000,"minecraft:custom_data":{Tags:["pir.bottle_with_map.bb"]}}}}] run function pirates:items/bottle_with_map
#smoking pipe
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73001,"minecraft:custom_data":{Tags:["pir.smoking_pipe.bb"]}}}}] run function pirates:items/smoking_pipe/smoking_pipe
#bombe
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73003,"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}}] run function pirates:items/bomb/bomb_fire
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73002,"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}}] run function pirates:items/bomb/bomb
#sail
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.sail.bb"]}}}}] run function pirates:items/sail/main
#kelp_on_a_stick
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73008,"minecraft:custom_data":{Tags:["pir.kelp_on_a_stick.bb"]}}}}] run function pirates:items/kelp_on_a_stick/main
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73008,"minecraft:damage":25}}}] run function pirates:items/kelp_on_a_stick/breack
#shell
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.shell.bb"]}}}}] run tag @s add pir.shell_used.bb
#harp
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73011,"minecraft:custom_data":{Tags:["pir.harp.bb"]}}}}] run function pirates:items/harp/main
#harp 2
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":73012,"minecraft:custom_data":{Tags:["pir.harp.bb"]}}}}] run function pirates:items/harp/sound
#heart
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.heart.bb"]}}}}] run function pirates:items/heart/main

###other sticks
execute if entity @s[nbt=!{SelectedItem:{"minecraft:custom_data":{Tags:["pir.rcm_stick.bb"]}}}] run scoreboard players set @s pir.use_stick.bb 0