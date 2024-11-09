execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pir.bomb.bb","pir.rcm_stick.bb"]}}}}] run item modify entity @s weapon.mainhand pirates:bomb_model
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{Tags:["pir.bomb.bb","pir.rcm_stick.bb"]}}}]}] run item modify entity @s weapon.offhand pirates:bomb_model
playsound minecraft:item.flintandsteel.use player @a[distance=..10] ~ ~ ~ 1 1.5
scoreboard players set @s pir.use_stick.bb 0
tag @s add pir.bomb_fire.bb
