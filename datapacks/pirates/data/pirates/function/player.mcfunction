#######################
#       Pirates       #
#      by BigSTy      #
#######################

###player
#tags
execute if entity @s[tag=pir.adventure_time.bb] run schedule function pirates:ships/advancements/adventure_loop 15t append
execute if entity @s[tag=pir.shell_used.bb] run function pirates:items/shell/main
execute if entity @s[tag=pir.heart.bb] run function pirates:items/heart/animation

###item
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.selected_item"]}}}]}] run function pirates:selected_item
#bomb
execute if entity @s[tag=pir.bomb_fire.bb] run function pirates:items/bomb/bomb_main
execute as @e[type=armor_stand,tag=pir.bomb.bb,distance=..40] at @s run function pirates:items/bomb/explode

###scoreboard
execute if score @s pir.use_stick.bb matches 1.. run function pirates:rcm
execute if score @s pir.eat_honey.bb matches 1.. run function pirates:items/honey_score
schedule function pirates:scores 10t append

###entity
#updates effects
execute as @e[tag=pir.update_done] at @s run function pirates:ships/updates/effects
#cannon tnt
execute as @e[tag=pir.cannon_tnt.bb,type=armor_stand] at @s run function pirates:blocks/work/cannon/tnt
execute as @e[type=marker,tag=pir.fire_cannonballs] at @s run function pirates:blocks/work/cannon/fire
#sail
execute as @e[type=item_display,tag=pir.sail_in_boat.bb,tag=!pir.not_ride,distance=..5] at @s run function pirates:items/sail/rotation
execute as @e[type=interaction,tag=pir.sail_in_boat.bb,distance=..3] at @s if data entity @s {interaction:{}} run function pirates:items/sail/color/interaction

###block
execute if entity @e[tag=pir.block,distance=..50] run function pirates:block

###mobs
execute as @e[tag=pir.custom_mobs,distance=..25] at @s run function pirates:mobs/main
execute as @e[tag=pir.spawn_mobs,distance=..25] at @s run function pirates:mobs/spawn_mobs