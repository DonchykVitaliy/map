#######################
#       Potion        #
#      by BigSTy      #
#######################

#place
execute as @e[tag=pir.setblock,type=item_display] at @s if entity @e[tag=pir.block,type=interaction,distance=..0.5] run tag @s add pir.not_place
execute as @e[tag=pir.setblock,type=item_display,tag=!pir.not_place] at @s if block ~ ~ ~ air run function pirates:blocks/place
execute as @e[tag=pir.setblock,type=item_display] at @s unless block ~ ~ ~ air run function pirates:blocks/not_place
execute as @e[tag=pir.setblock,type=item_display,tag=pir.not_place] at @s run function pirates:blocks/not_place_block

#destroy
execute as @e[type=interaction,tag=pir.block] at @s run function pirates:blocks/destroy_main
execute as @e[type=item_display,tag=pir.full] at @s run function pirates:blocks/destroy/full_blocks

#brewing barrel
execute as @e[type=item_display,tag=pir.brewing_barrel.bb,distance=..35] at @s run function pirates:blocks/work/brewing_barrel

#recipe_machine
execute as @e[type=item_display,tag=pir.recipe_machine.bb,distance=..7] at @s run function pirates:blocks/work/recipe_machine

#cannon
execute as @e[type=interaction,tag=pir.cannon.bb,tag=pir.cannon_shoot] at @s run function pirates:blocks/work/cannon/shoot
execute as @e[type=interaction,tag=pir.cannon.bb,tag=pir.load_cannon] at @s run function pirates:blocks/work/cannon/start_load

#cage
execute as @e[type=interaction,tag=pir.cage.bb,tag=!pir.full_cage.bb] at @s run function pirates:blocks/work/cage

#coconut
execute as @e[type=interaction,tag=pir.coconout.bb] at @s if block ~ ~1 ~ air run function pirates:blocks/destroy/coconut

#gun_frame
execute as @e[type=item_display,tag=pir.gun_frame.bb] at @s if block ^ ^ ^-1 air run function pirates:blocks/destroy/items/gun_frame

#candle
execute as @e[type=item_display,tag=pir.candle.bb,distance=..10] at @s if entity @e[type=interaction,tag=pir.fire_candle,distance=..0.5] run function pirates:blocks/work/candle/loop

#torch_stick
execute as @e[type=interaction,tag=pir.torch_stick.bb,distance=..10] at @s unless block ~ ~1 ~ torch run function pirates:blocks/destroy/items/torch_stick

#pirate_chest
execute as @e[type=interaction,tag=pir.pirate_chest.bb,tag=pir.chest_opened,distance=..6] at @s run function pirates:blocks/work/pirate_chest/animation
execute as @e[type=item_display,tag=pir.pirate_chest.bb,tag=pir.play_anim_chest.dome,distance=..4] at @s unless block ~ ~ ~ player_head run function pirates:blocks/destroy/pirate_chest

#pirate_disc
execute as @e[type=marker,tag=pir.jukebox.bb] at @s unless block ~ ~ ~ jukebox run function pirates:items/disc/full/pre
execute as @e[type=marker,tag=pir.jukebox.bb] at @s if block ~ ~ ~ jukebox[has_record=false] run function pirates:items/disc/full/pre