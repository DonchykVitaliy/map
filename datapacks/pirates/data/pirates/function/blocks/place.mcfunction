#######################
#       Pirates       #
#      by BigSTy      #
#######################

#anchor
execute if entity @s[tag=pir.anchor.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation_with_up
execute if entity @s[tag=pir.anchor.bb,tag=pir.rotation_done] run function pirates:blocks/place/anchor
#bundle
execute if entity @s[tag=pir.bundle.bb] run function pirates:blocks/place/bundle
#bottle
execute if entity @s[tag=pir.bottle.bb] run function pirates:blocks/place/bottle
#golden_ingot
execute if entity @s[tag=pir.golden_ingot.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.golden_ingot.bb,tag=pir.rotation_done] run function pirates:blocks/place/golden_ingot
#golden_ingot
execute if entity @s[tag=pir.many_golden_ingot.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.many_golden_ingot.bb,tag=pir.rotation_done] run function pirates:blocks/place/many_golden_ingot
#map1
execute if entity @s[tag=pir.map1.bb] run function pirates:blocks/place/map1
#map2
execute if entity @s[tag=pir.map2.bb] run function pirates:blocks/place/map2
#barrel with gold
execute if entity @s[tag=pir.barrel.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.barrel.bb,tag=pir.rotation_done] run function pirates:blocks/place/barrel_with_gold
#brewing_barrel
execute if entity @s[tag=pir.brewing_barrel.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.brewing_barrel.bb,tag=pir.rotation_done] run function pirates:blocks/place/brewing_barrel
#cannon
execute if entity @s[tag=pir.cannon.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.cannon.bb,tag=pir.rotation_done] run function pirates:blocks/place/cannon
#parrot_cage
execute if entity @s[tag=pir.cage.bb] run function pirates:blocks/place/cage
#pirate_cage
execute if entity @s[tag=pir.pirate_cage.bb] run function pirates:blocks/place/pirate_cage
#coconut
execute if entity @s[tag=pir.coconout.bb] run function pirates:blocks/place/coconut
#cannonball
execute if entity @s[tag=pir.cannonball.bb] run function pirates:blocks/place/cannonball
#gun_frame
execute if entity @s[tag=pir.gun_frame.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.gun_frame.bb,tag=pir.rotation_done] run function pirates:blocks/place/gun_frame
#candle
execute if entity @s[tag=pir.candle.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.candle.bb,tag=pir.rotation_done] run function pirates:blocks/place/candle
#torch_stick
execute if entity @s[tag=pir.torch_stick.bb] unless block ~ ~1 ~ air run function pirates:blocks/destroy/torch_stick
execute if entity @s[tag=pir.torch_stick.bb] if block ~ ~1 ~ air run function pirates:blocks/place/torch_stick
#broken_lantern
execute if entity @s[tag=pir.broken_lantern.bb] run function pirates:blocks/place/broken_lantern
#recipe_machine
execute if entity @s[tag=pir.recipe_machine.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.recipe_machine.bb,tag=pir.rotation_done] run function pirates:blocks/place/recipe_machine
#pirate_chest
execute if entity @s[tag=!pir.place_pirate_chest.bb,tag=pir.pirate_chest.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=!pir.place_pirate_chest.bb,tag=pir.pirate_chest.bb] run function pirates:blocks/place/pirate_chest
#ship_in_a_bottle
execute if entity @s[tag=pir.ship_in_a_bottle.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.ship_in_a_bottle.bb,tag=pir.rotation_done] run function pirates:blocks/place/ship_in_a_bottle
#golden_scull
execute if entity @s[tag=pir.golden_scull.bb,tag=!pir.rotation_done] run function pirates:blocks/place/rotation
execute if entity @s[tag=pir.golden_scull.bb,tag=pir.rotation_done] run function pirates:blocks/place/golden_scull
#shell
execute if entity @s[tag=pir.shell.bb] run function pirates:blocks/place/shell