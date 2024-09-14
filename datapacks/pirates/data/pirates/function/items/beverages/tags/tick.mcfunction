#beer
execute unless items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_data={Tags:["pir.beer.bb","pir.selected_item","pir.beverages"]}] run tag @s remove pir.eat_beer
#berry
execute unless items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_data={Tags:["pir.berry.bb","pir.selected_item","pir.beverages"]}] run tag @s remove pir.eat_berry
#pumpkin
execute unless items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_data={Tags:["pir.pumpkin.bb","pir.selected_item","pir.beverages"]}] run tag @s remove pir.eat_pumpkin
#coconout
execute unless items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_data={Tags:["pir.coconout.bb","pir.selected_item","pir.beverages"]}] run tag @s remove pir.eat_coconout
#rum
execute unless items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_data={Tags:["pir.rum.bb","pir.selected_item","pir.beverages"]}] run tag @s remove pir.eat_rum



execute unless items entity @s weapon.* minecraft:honey_bottle run tag @s remove pir.alcohol_eat