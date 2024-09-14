#golden_ingot
execute if entity @s[tag=pir.golden_ingot.bb] run function pirates:blocks/destroy/golden_ingot

#bottle
execute if entity @s[tag=pir.bottle.bb] run function pirates:blocks/destroy/bottle

#bundle
execute if entity @s[tag=pir.bundle.bb] run function pirates:blocks/destroy/bundle

#many_golden_ingot
execute if entity @s[tag=pir.many_golden_ingot.bb] run function pirates:blocks/destroy/many_golden_ingots

#cannon
execute if entity @s[tag=pir.cannon.bb,tag=pir.two_cannon,tag=!pir.cannon_charge] run function pirates:blocks/work/cannon/take_charge
#execute if entity @s[tag=pir.cannon.bb,tag=pir.two_cannon,tag=pir.cannon_charge,tag=!pir.cannon_shoot] run function pirates:blocks/work/cannon/load
execute if entity @s[tag=pir.cannon.bb,tag=pir.cannon_main.bb,tag=pir.cannon_charge] run function pirates:blocks/work/cannon/load

#cage
execute if entity @s[tag=pir.cage.bb] run function pirates:blocks/work/cage/open_cage

#gun_frame
execute if entity @s[tag=pir.gun_frame.bb] run function pirates:blocks/work/gun_frame/main

#candle
execute if entity @s[tag=pir.candle.bb] run function pirates:blocks/work/candle/main

#pirate_chest
execute if entity @s[tag=pir.pirate_chest.bb] run function pirates:blocks/work/pirate_chest/main