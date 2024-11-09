#saber
execute as @a[distance=..1.5,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.saber.bb"]}}}}] at @s run function pirates:blocks/work/gun_frame/saber
#oar
execute as @a[distance=..1.5,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.oar.bb"]}}}}] at @s run function pirates:blocks/work/gun_frame/oar
#pistol
execute as @a[distance=..1.5,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.pistol.bb"]}}}}] at @s run function pirates:blocks/work/gun_frame/pistol
#rifle
execute as @a[distance=..1.5,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.rifle.bb"]}}}}] at @s run function pirates:blocks/work/gun_frame/rifle
#sword
execute as @a[distance=..1.5] at @s if items entity @s weapon.mainhand #minecraft:swords[!minecraft:custom_data={Tags:["pir.saber.bb"]},!minecraft:custom_data={Tags:["pir.oar.bb"]}] run function pirates:blocks/work/gun_frame/sword

data remove entity @s interaction