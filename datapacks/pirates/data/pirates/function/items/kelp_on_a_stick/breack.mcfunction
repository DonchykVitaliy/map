playsound minecraft:entity.item.break block @a[distance=..10]
clear @s carrot_on_a_stick[custom_model_data=73008,damage=25]
particle minecraft:item{item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":73008}}} ^ ^1 ^0.01 0 0.2 0 0.07 10
give @s fishing_rod