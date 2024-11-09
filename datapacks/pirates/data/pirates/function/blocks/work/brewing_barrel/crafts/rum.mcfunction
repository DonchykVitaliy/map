playsound block.brewing_stand.brew block @a[distance=..10] ~ ~ ~
scoreboard players set @s pir.working_brewing.bb 0
item replace block ~ ~ ~ container.16 with honey_bottle[item_name='{"translate":"pir.rom.bb"}',custom_model_data=70001,custom_data={Tags:["pir.rum.bb","pir.selected_item","pir.beverages"]},food={nutrition:6,saturation:3,effects:[{effect:{id:"minecraft:strength",amplifier:0,duration:600},probability:1}]}]
tag @s remove pir.brewing_100.bb
tag @s remove pir.working.bb
tag @s remove pir.w_rum.bb
function pirates:blocks/work/brewing_barrel/clear_gui