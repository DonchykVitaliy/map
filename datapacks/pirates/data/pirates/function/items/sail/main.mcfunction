execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.fishing_rod_sail.bb"]}}}}] run function pirates:items/sail/white/player

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.pirates_sail.bb"]}}}}] run function pirates:items/sail/pirates/player

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.command_block_sail.bb"]}}}}] run function pirates:items/sail/command_block/player

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.undead_sail.bb"]}}}}] run function pirates:items/sail/undead/player

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.color_sail.bb"]}}}}] run function pirates:items/sail/color/player


scoreboard players set @s pir.use_stick.bb 0