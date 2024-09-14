scoreboard players add @s pir.pirate_chest.anim.bb 1

execute if score @s pir.pirate_chest.anim.bb matches 2 as @e[type=item_display,tag=pir.pirate_chest.bb,limit=1,sort=nearest,distance=..1,tag=!pir.play_anim_chest] run function pirates:blocks/work/pirate_chest/animation_start
execute if score @s pir.pirate_chest.anim.bb matches 20.. as @e[type=item_display,tag=pir.pirate_chest.bb,limit=1,sort=nearest,distance=..1,tag=pir.play_anim_chest] run function pirates:blocks/work/pirate_chest/animation_stop
execute if score @s pir.pirate_chest.anim.bb matches 20 run loot spawn ~ ~0.5 ~ loot pirates:chest/pirate_island/pirate_chest
execute if score @s pir.pirate_chest.anim.bb matches 21.. run kill @s