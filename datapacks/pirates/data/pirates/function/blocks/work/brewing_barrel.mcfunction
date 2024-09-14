#dissable hoper
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ hopper[enabled=false]

#open barrel
execute if block ~ ~ ~ barrel[open=true] run function pirates:blocks/work/brewing_barrel_open
kill @e[type=item,nbt={Item:{components: {"minecraft:custom_data":{Tags:["pir.kill_item"]}}}},distance=..2]

##working barrel
execute if entity @s[tag=pir.working.bb] run function pirates:blocks/work/brewing_barrel/working