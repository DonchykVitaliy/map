playsound block.brewing_stand.brew block @a[distance=..10] ~ ~ ~
advancement grant @a[distance=..4] only pirates:pirates/breawing_barrel
scoreboard players set @s pir.working_brewing.bb 0
item replace block ~ ~ ~ container.16 with honey_bottle[item_name='{"translate":"pir.beer.bb"}',custom_model_data=70000,custom_data={Tags:["pir.beer.bb","pir.selected_item","pir.beverages"]},food={nutrition:6,saturation:3,effects:[{effect:{id:"minecraft:haste",amplifier:2,duration:800},probability:1}]}]
tag @s remove pir.working.bb
tag @s remove pir.w_beer.bb
tag @s remove pir.brewing_100.bb
function pirates:blocks/work/brewing_barrel/clear_gui