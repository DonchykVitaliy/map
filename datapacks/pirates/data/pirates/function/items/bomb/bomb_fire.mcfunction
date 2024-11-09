execute if entity @s[tag=pir.bomb_fire.bb,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":73003,"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}}] run item replace entity @s weapon.mainhand with air
execute if entity @s[tag=pir.bomb_fire.bb,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":73003,"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}]}] run item replace entity @s weapon.offhand with air

playsound minecraft:entity.snowball.throw player @a[distance=..8] ~ ~ ~ 0.6 0.5
summon armor_stand ~ ~1.2 ~ {Tags:["pir.bomb.bb"],Invulnerable:1b,Invisible:1b,Small:1b,Passengers:[{id:"minecraft:item_display",Tags:["pir.bomb.bb"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.6f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:carrot_on_a_stick",components:{"custom_model_data":73003},count:1b}}]}
execute as @e[type=armor_stand,tag=pir.bomb.bb,tag=!pir.motion] at @s rotated as @p run function pirates:items/bomb/rotation


execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_model_data":73003,"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}]}] run tag @s remove pir.bomb_fire.bb