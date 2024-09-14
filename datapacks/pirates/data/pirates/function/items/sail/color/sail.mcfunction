summon item_display ~ ~0.5 ~ {Tags:["pir.sail_in_boat.bb","pir.not_ride","pir.sail_color"],Passengers:[{id:"minecraft:interaction",Tags:["pir.sail_in_boat.bb","pir.color_int"],width:1f,height:2f}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:firework_star",count:1b,components:{"minecraft:custom_model_data":73031,firework_explosion:{shape:"small_ball",colors:[I;16777215]}}}}
ride @e[type=item_display,distance=..1,tag=pir.not_ride,tag=pir.sail_color,limit=1] mount @s
tag @e[type=item_display,distance=..1,tag=pir.not_ride,tag=pir.sail_color,limit=1] remove pir.not_ride
tag @s add pir.with_sail
playsound minecraft:item.book.put block @a[distance=..8] ~ ~ ~ 2 0.7