#move
execute unless predicate pirates:mobs/move run function pirates:mobs/work/pirate_hook/move

#stay
execute if predicate pirates:mobs/move if entity @s[tag=pir.animation_move,tag=!pir.attack_animation] run function pirates:mobs/work/pirate_hook/stay

#damage
execute if entity @s[nbt=!{HurtTime:0s}] run function pirates:mobs/work/pirate_hook/damage

#attack
execute if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] as @e[type=item_display,tag=pir.pirate_hook.mob,limit=1,sort=nearest,tag=!pir.attack_animation,distance=..2] run function pirates:mobs/work/pirate_hook/attack_play
execute as @e[type=item_display,tag=pir.pirate_hook.mob,limit=1,sort=nearest,tag=pir.attack_animation,distance=..2] run function pirates:mobs/work/pirate_hook/attack_stop

#moments
execute unless entity @s[tag=pir.animation_move] unless entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] as @e[type=item_display,tag=pir.pirate_hook.mob,limit=1,sort=nearest,tag=!pir.attack_animation,tag=!pir.damage_animation,tag=!pir.animation_move,tag=!pir.animation_moment] run function pirates:mobs/work/pirate_hook/moment_main
execute unless entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.pirate_hook.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/pirate_hook/moment_loop
execute if entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.pirate_hook.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/pirate_hook/moment_stop