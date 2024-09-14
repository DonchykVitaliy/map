playsound block.brewing_stand.brew block @a[distance=..10] ~ ~ ~
scoreboard players set @s pir.working_brewing.bb 0
item replace block ~ ~ ~ container.16 with honey_bottle[item_name='{"translate":"pir.pumpkin_tincture.bb"}',custom_model_data=70004,custom_data={Tags:["pir.pumpkin_tincture.bb","pir.selected_item","pir.beverages"]},food={nutrition:6,saturation:3,effects:[{effect:{id:"minecraft:jump_boost",amplifier:1,duration:400},probability:1}]}]
tag @s remove pir.working.bb
tag @s remove pir.w_pumpkin.bb
tag @s remove pir.brewing_100.bb
function pirates:blocks/work/brewing_barrel/clear_gui