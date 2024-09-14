#sword
execute as @a[distance=..1.5] at @s if items entity @s weapon.mainhand #minecraft:swords[!minecraft:custom_data={Tags:["pir.saber.bb"]}] run function pirates:blocks/work/gun_frame/sword
#saber
execute as @a[distance=..1.5,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.saber.bb"]}}}}] at @s run function pirates:blocks/work/gun_frame/saber
#pistol
execute as @a[distance=..1.5,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["pir.pistol.bb"]}}}}] at @s run function pirates:blocks/work/gun_frame/pistol

data remove entity @s interaction