execute if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_data={Tags:["pir.bell_hat.bb","pir.selected_item"]}] run function pirates:items/hat/bell_hat_equip
execute if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_data={Tags:["pir.broken_bell_hat.bb","pir.bell_hat.bb","pir.selected_item"]}] run function pirates:items/hat/broken_bell_hat_equip

execute if items entity @s[tag=!pir.bell_hat] armor.head minecraft:firework_star[minecraft:custom_data={Tags:["pir.bell_hat.bb","pir.selected_item"]}] run function pirates:items/hat/bell_hat_tag

execute if items entity @s container.* minecraft:firework_star[minecraft:custom_data={Tags:["pir.bell_hat.bb","pir.selected_item"]}] unless items entity @s armor.head minecraft:firework_star[minecraft:custom_data={Tags:["pir.bell_hat.bb","pir.selected_item"]}] run function pirates:items/hat/bell_hat_remove
execute if items entity @s container.* minecraft:firework_star[minecraft:custom_data={Tags:["pir.broken_bell_hat.bb","pir.bell_hat.bb","pir.selected_item"]}] unless items entity @s armor.head minecraft:firework_star[minecraft:custom_data={Tags:["pir.broken_bell_hat.bb","pir.bell_hat.bb","pir.selected_item"]}] run function pirates:items/hat/broken_bell_hat_remove
