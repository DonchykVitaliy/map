#setup
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_ore"]}}}]},tag=!pir.quest1] run function pirates:ships/quests/quest1/setup
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_pirate"]}}}]},tag=!pir.quest2] run function pirates:ships/quests/quest2/setup
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_cannon"]}}}]},tag=!pir.quest3] run function pirates:ships/quests/quest3/setup
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_cheese"]}}}]},tag=!pir.quest4] run function pirates:ships/quests/quest4/setup
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_alcohol"]}}}]},tag=!pir.quest5] run function pirates:ships/quests/quest5/setup




#complete
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_ore"]}}}]},tag=pir.quest1] run function pirates:ships/quests/quest1/math
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_pirate"]}}}]},tag=pir.quest2] run function pirates:ships/quests/quest2/math
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_cannon"]}}}]},tag=pir.quest3] run function pirates:ships/quests/quest3/math
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_cheese"]}}}]},tag=pir.quest4] run function pirates:ships/quests/quest4/math
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest_alcohol"]}}}]},tag=pir.quest5] run function pirates:ships/quests/quest5/math