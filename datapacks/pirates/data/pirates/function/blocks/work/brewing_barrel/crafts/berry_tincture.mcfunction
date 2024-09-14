playsound block.brewing_stand.brew block @a[distance=..10] ~ ~ ~
scoreboard players set @s pir.working_brewing.bb 0
item replace block ~ ~ ~ container.16 with honey_bottle[item_name='{"translate":"pir.berry_tincture.bb"}',custom_model_data=70002,custom_data={Tags:["pir.berry_tincture.bb","pir.selected_item","pir.beverages"]},food={nutrition:6,saturation:3,effects:[{effect:{id:"minecraft:night_vision",amplifier:0,duration:800},probability:1}]}]
tag @s remove pir.working.bb
tag @s remove pir.w_berry.bb
tag @s remove pir.brewing_100.bb
function pirates:blocks/work/brewing_barrel/clear_gui