kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.gun_frame.bb]

#drop item from gun_frame
summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b},Tags:["pir.drop_item_frame"]}
data modify entity @e[type=minecraft:item,tag=pir.drop_item_frame,sort=nearest,limit=1] Item.id set from entity @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=pir.ditem_frame.bb] item.id
data modify entity @e[type=minecraft:item,tag=pir.drop_item_frame,sort=nearest,limit=1] Item.components set from entity @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=pir.ditem_frame.bb] item.components
loot spawn ~ ~ ~ loot pirates:gun_frame

kill @e[type=item,distance=..3,tag=pir.drop_item_frame,nbt={Item:{id:"minecraft:barrier"}}]
kill @e[type=item_display,distance=..0.5,limit=1,tag=pir.ditem_frame.bb]
particle minecraft:item{item:{id:"minecraft:bee_spawn_egg",components:{"minecraft:custom_model_data":73006}}} ~ ~0.5 ~ 0 0.2 0 0.07 10
playsound minecraft:entity.item_frame.place block @a[distance=..10] ~ ~ ~ 0.8 0.5
kill @s