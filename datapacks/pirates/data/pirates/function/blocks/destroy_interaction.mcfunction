#######################
#       Pirates       #
#      by BigSTy      #
#######################

#anchor
execute if entity @s[tag=pir.anchor.bb] run function pirates:blocks/destroy/anchor
#bundle
execute if entity @s[tag=pir.bundle.bb] run function pirates:blocks/destroy/items/bundle
#bottle
execute if entity @s[tag=pir.bottle.bb] run function pirates:blocks/destroy/bottle
#golden_ingot
execute if entity @s[tag=pir.golden_ingot.bb] run function pirates:blocks/destroy/items/golden_ingot_loot
#many_golden_ingot
execute if entity @s[tag=pir.many_golden_ingot.bb] run function pirates:blocks/destroy/items/many_golden_ingot_loot
#map1
execute if entity @s[tag=pir.map1.bb] run function pirates:blocks/destroy/map1
#map2
execute if entity @s[tag=pir.map2.bb] run function pirates:blocks/destroy/map2
#cannon
execute if entity @s[tag=pir.cannon.bb] run function pirates:blocks/destroy/cannon
#parrot_cage
execute if entity @s[tag=pir.cage.bb] run function pirates:blocks/destroy/cage
#pirate_cage
execute if entity @s[tag=pir.pirate_cage.bb] run function pirates:blocks/destroy/pirate_cage
#coconut
execute if entity @s[tag=pir.coconout.bb] run function pirates:blocks/destroy/coconut
#cannonball
execute if entity @s[tag=pir.cannonball.bb] run function pirates:blocks/destroy/cannonball
#gun_frame
execute if entity @s[tag=pir.gun_frame.bb] run function pirates:blocks/destroy/gun_frame
#candle
execute if entity @s[tag=pir.candle.bb] unless block ~ ~ ~ light run function pirates:blocks/destroy/candle
execute if entity @s[tag=pir.candle.bb,tag=pir.fire_candle] if data entity @s {attack:{}} run function pirates:blocks/destroy/candle
#torch_stick
execute if entity @s[tag=pir.torch_stick.bb] run function pirates:blocks/destroy/torch_stick
#broken_lantern
execute if entity @s[tag=pir.broken_lantern.bb] run function pirates:blocks/destroy/broken_lantern
#ship_in_a_bottle
execute if entity @s[tag=pir.ship_in_a_bottle.bb] run function pirates:blocks/destroy/ship_in_a_bottle
#shell
execute if entity @s[tag=pir.shell.bb] run function pirates:blocks/destroy/shell

