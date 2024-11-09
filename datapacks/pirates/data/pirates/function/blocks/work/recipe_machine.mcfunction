#dissable hoper
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ hopper[enabled=false]

#open barrel
execute if block ~ ~ ~ barrel[open=true] run function pirates:blocks/work/recipe_machine_open
kill @e[type=item,nbt={Item:{components: {"minecraft:custom_data":{Tags:["pir.kill_item"]}}}},distance=..2]
