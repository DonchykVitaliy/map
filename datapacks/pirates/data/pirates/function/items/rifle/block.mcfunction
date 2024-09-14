give @s[gamemode=!creative] arrow 1

#default
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run item modify entity @s weapon.mainhand pirates:rifle/block_rifle
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run item modify entity @s weapon.offhand pirates:rifle/block_rifle
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run item modify entity @s weapon.mainhand pirates:rifle/block_rifle
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run item modify entity @s weapon.offhand pirates:rifle/block_rifle
#ench
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run item modify entity @s weapon.mainhand pirates:rifle/block_rifle_enchanted
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run item modify entity @s weapon.offhand pirates:rifle/block_rifle_enchanted
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run item modify entity @s weapon.mainhand pirates:rifle/block_rifle_enchanted
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.enchanted_speed","pir.rifle.bb","pir.selected_item" ,"pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run item modify entity @s weapon.offhand pirates:rifle/block_rifle_enchanted

stopsound @a[distance=..5] player item.crossbow.loading_end
title @a actionbar {"translate":"pir.rifle_reload_title.bb"}

