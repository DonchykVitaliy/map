# СЛАВА УКРАЇНІ!!!

###pirates
#with_pistol
execute if entity @s[tag=pir.pirate_pistol.mob] run function pirates:mobs/pirate_pistol
#with_saber
execute if entity @s[tag=pir.pirate_saber.mob] run function pirates:mobs/pirate_saber
#with_bomb
execute if entity @s[tag=pir.pirate_bomb.mob] run function pirates:mobs/pirate_bomb
#with_hook
execute if entity @s[tag=pir.pirate_hook.mob] run function pirates:mobs/pirate_hook
#pirate_1
execute if entity @s[tag=pir.pirate_1.mob] run function pirates:mobs/pirate_1
#pirate_2
execute if entity @s[tag=pir.pirate_2.mob] run function pirates:mobs/pirate_2
#boss
execute if entity @s[tag=pir.boss.mob] run function pirates:mobs/boss

###ocean
#mermaid_1
execute if entity @s[tag=pir.mermaid_1.mob] run function pirates:mobs/mermaid_1
#mermaid_2
execute if entity @s[tag=pir.mermaid_2.mob] run function pirates:mobs/mermaid_2
#mermaid_3
execute if entity @s[tag=pir.mermaid_3.mob] run function pirates:mobs/mermaid_3
#ariel
execute if entity @s[tag=pir.ariel.mob] run function pirates:mobs/ariel
#cliques
execute if entity @s[tag=pir.mob_cliques] run function pirates:mobs/work/ariel/move_cliques

###undead
#skeleton_1
execute if entity @s[tag=pir.skeleton_1.mob] run function pirates:mobs/skeleton_1
#skeleton_2
execute if entity @s[tag=pir.skeleton_2.mob] run function pirates:mobs/skeleton_2
#skeleton_3
execute if entity @s[tag=pir.skeleton_3.mob] run function pirates:mobs/skeleton_3
#drowned_1
execute if entity @s[tag=pir.drowned_1.mob] run function pirates:mobs/drowned_1
#drowned_2
execute if entity @s[tag=pir.drowned_2.mob] run function pirates:mobs/drowned_2

###spawn_egg
execute if entity @s[tag=pir.spawn_egg] run function pirates:mobs/spawn/spawn_egg/main


#turtle
execute if entity @s[type=turtle,tag=pir.ride_turtle] run function pirates:items/kelp_on_a_stick/turtle

#arrows
execute if entity @s[type=arrow,tag=pir.arrow_rifle.bb,nbt={inGround:1b}] run kill @s
execute if entity @s[type=arrow,tag=pir.arrow_pistol.bb,nbt={inGround:1b}] run kill @s