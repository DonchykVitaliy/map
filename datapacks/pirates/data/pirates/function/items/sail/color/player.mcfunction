execute if entity @e[type=#boat,distance=..0.5,tag=!pir.with_sail] run clear @s carrot_on_a_stick[minecraft:custom_data={Tags:["pir.sail.bb","pir.color_sail.bb","pir.rcm_stick.bb"]}] 1
execute on vehicle run function pirates:items/sail/color/boat
