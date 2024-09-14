execute if entity @s[tag=!pir.frame_full.bb] run function pirates:blocks/work/gun_frame/take_item

execute if entity @s[tag=pir.frame_full.bb] if data entity @s {interaction:{}} run function pirates:blocks/work/gun_frame/give_item

data remove entity @s interaction
