#1
execute if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_model_data=71001] run function pirates:items/hat/pirate_cap_equip
execute if items entity @s container.* minecraft:firework_star[minecraft:custom_model_data=73007] unless items entity @s armor.head minecraft:firework_star[minecraft:custom_model_data=73007] run function pirates:items/hat/pirate_cap_remove
#2
execute if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_model_data=71007] run function pirates:items/hat/pirate_cap2_equip
execute if items entity @s container.* minecraft:firework_star[minecraft:custom_model_data=73020] unless items entity @s armor.head minecraft:firework_star[minecraft:custom_model_data=73020] run function pirates:items/hat/pirate_cap2_remove
#3
execute if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_model_data=71008] run function pirates:items/hat/pirate_cap3_equip
execute if items entity @s container.* minecraft:firework_star[minecraft:custom_model_data=73022] unless items entity @s armor.head minecraft:firework_star[minecraft:custom_model_data=73022] run function pirates:items/hat/pirate_cap3_remove