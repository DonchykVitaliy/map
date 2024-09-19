data modify entity @e[type=minecraft:item_display,distance=..1.5,tag=pir.ditem_frame.bb,sort=nearest,limit=1] item.id set from entity @s SelectedItem.id
data modify entity @e[type=minecraft:item_display,distance=..1.5,tag=pir.ditem_frame.bb,sort=nearest,limit=1] item.components set from entity @s SelectedItem.components

item replace entity @s weapon.mainhand with air
playsound minecraft:item.armor.equip_iron block @a[distance=..5] ~ ~ ~ 0.6 1

execute as @e[type=interaction,tag=pir.gun_frame.bb,distance=..1.5,limit=1,sort=nearest] run data remove entity @s interaction
execute as @e[type=interaction,tag=pir.gun_frame.bb,distance=..1.5,limit=1,sort=nearest] unless data entity @s {interaction:{}} run tag @s add pir.frame_full.bb