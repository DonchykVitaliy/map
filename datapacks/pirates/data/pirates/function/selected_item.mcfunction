#######################
#       Pirates       #
#      by BigSTy      #
#######################


###item
#bell hat
execute if entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{Tags:["pir.bell_hat.bb"]},"minecraft:custom_model_data":71002}}]}] run function pirates:items/hat/bell_hat
#execute if items entity @s container.* minecraft:iron_helmet[minecraft:custom_model_data=71006,repair_cost=3] run function pirates:items/hat/bell_fix  я так и не придумал как менять модель после починки
#rifle
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.rifle.bb"]}}}]}] run function pirates:items/rifle/main
#pistol
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{Tags:["pir.pistol.bb"]}}}]}] run function pirates:items/pistol/main
#lucky coin
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.lucky_coin"]}}}]}] run schedule function pirates:items/lucky_coin 15t append
#beer
execute if items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_model_data=70000] run function pirates:items/beverages/tags/beer
#rum
execute if items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_model_data=70001] run function pirates:items/beverages/tags/rum
#berry
execute if items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_model_data=70002] run function pirates:items/beverages/tags/berry
#coconout
execute if items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_model_data=70003] run function pirates:items/beverages/tags/coconout
#pumpkin
execute if items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_model_data=70004] run function pirates:items/beverages/tags/pumpkin
#cup
execute if items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_model_data=70005] run scoreboard players set @s pir.selected_cup.bb 1
#horn
execute if items entity @s weapon.* minecraft:goat_horn[minecraft:custom_model_data=76000] if score @s pir.gold_horn.bb matches 1.. run function pirates:items/horn
#poison_saber
execute if items entity @s weapon.* minecraft:iron_sword[minecraft:custom_model_data=74005] if score @s pir.poison_sword.bb matches 1.. run function pirates:items/poison_sword/main
#random map
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.random_map.bb"]}}}]}] run function pirates:items/random_map
#mermaid boots
execute if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",components:{"minecraft:custom_data":{Tags:["pir.mermaid_boots.bb"]}}}]}] run function pirates:items/mermaid_boots
#amethyst amulet
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.amethyst_amulet.bb"]}}}]}] run function pirates:items/amethyst_amulet/amethyst_amulet
#emerald amulet
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.emerald_amulet.bb"]}}}]}] run function pirates:items/emerald_amulet/emerald_amulet

###updates
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.update"]}}}]}] run function pirates:ships/updates/main

###quests
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest.bb"]}}}]}] run function pirates:ships/quests/main