give @s[gamemode=!creative] arrow 1
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.iron_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run item modify entity @s weapon.mainhand pirates:pistol/block_iron_pistol
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.iron_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, id: "minecraft:arrow"}]] run item modify entity @s weapon.offhand pirates:pistol/block_iron_pistol
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.iron_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run item modify entity @s weapon.mainhand pirates:pistol/block_iron_pistol
execute if items entity @s weapon.offhand minecraft:crossbow[minecraft:custom_data={Tags:["pir.pistol.bb","pir.selected_item","pir.iron_pistol","pir.empty"]},minecraft:charged_projectiles=[{count: 1, components: {"minecraft:intangible_projectile": {}}, id: "minecraft:arrow"}]] run item modify entity @s weapon.offhand pirates:pistol/block_iron_pistol
stopsound @a[distance=..5] player item.crossbow.loading_end
title @a actionbar {"translate":"pir.pistol_reload_title.bb"}

