execute store result score @s pir.bell_random.bb run random value 1..10

execute if score @s pir.bell_random.bb matches 7.. run playsound minecraft:entity.item.break player @a[distance=..10]
execute if score @s pir.bell_random.bb matches 7.. run item replace entity @s armor.head with firework_star[custom_model_data=73019,item_name='{"translate":"pir.broken_bell_hat.bb"}',custom_data={Tags:["pir.broken_bell_hat.bb","pir.bell_hat.bb","pir.selected_item"]},hide_additional_tooltip= {},attribute_modifiers= {"modifiers": [{"id": "bell_hat","type": "minecraft:generic.armor","amount": 0,"operation": "add_value","slot": "head"}],show_in_tooltip: false}]
execute if score @s pir.bell_random.bb matches 7.. run particle item{item:{id:"minecraft:firework_star",components:{"minecraft:custom_model_data":73008}}} ~ ~1.7 ~ 0.1 0.3 0.1 0.09 18

scoreboard players set @s pir.score_bell.bb 0
scoreboard players set @s pir.bell_random.bb 0
