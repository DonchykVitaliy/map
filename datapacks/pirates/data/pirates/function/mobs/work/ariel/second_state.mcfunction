tag @s add pir.second_state
summon lightning_bolt ~ ~ ~
item replace entity @s weapon.mainhand with minecraft:iron_sword[attribute_modifiers=[{id:"attack_damage",type:"generic.attack_damage",amount:10,operation:"add_value"}],minecraft:custom_model_data=75000]

particle minecraft:bubble_column_up ~ ~0.65 ~ 0.3 0.9 0.3 0 60
particle minecraft:cloud ~ ~0.7 ~ 0.25 0.5 0.25 0.03 50
particle minecraft:bubble ~ ~0.65 ~ 0.3 0.5 0.3 0 80

effect give @s instant_damage 3 2 true
effect give @s speed infinite 5 true