execute if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_model_data=71001] run function pirates:items/hat/pirate_cap_equip

execute if items entity @s container.* minecraft:firework_star[minecraft:custom_model_data=73007] unless items entity @s armor.head minecraft:firework_star[minecraft:custom_model_data=73007] run function pirates:items/hat/pirate_cap_remove

execute if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_model_data=71007] run function pirates:items/hat/pirate_cap2_equip

execute if items entity @s container.* minecraft:firework_star[minecraft:custom_model_data=73020] unless items entity @s armor.head minecraft:firework_star[minecraft:custom_model_data=73020] run function pirates:items/hat/pirate_cap2_remove