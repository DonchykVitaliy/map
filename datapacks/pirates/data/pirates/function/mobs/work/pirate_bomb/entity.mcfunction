#move
execute unless predicate pirates:mobs/move run function pirates:mobs/work/pirate_bomb/move

#stay
execute if predicate pirates:mobs/move if entity @s[tag=pir.animation_move] run function pirates:mobs/work/pirate_bomb/stay

#damage
execute if entity @s[nbt=!{HurtTime:0s}] run function pirates:mobs/work/pirate_bomb/damage

#attack
execute if items entity @s weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]] run function pirates:mobs/work/pirate_bomb/attack
execute if entity @s[tag=pir.attack_animation] run function pirates:mobs/work/pirate_bomb/attack_animation

#moments
execute unless entity @s[tag=pir.animation_move] unless entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] as @e[type=item_display,tag=pir.pirate_bomb.mob,limit=1,sort=nearest,tag=!pir.attack_animation,tag=!pir.damage_animation,tag=!pir.animation_move,tag=!pir.animation_moment] run function pirates:mobs/work/pirate_bomb/moment_main
execute unless entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.pirate_bomb.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/pirate_bomb/moment_loop
execute if entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.pirate_bomb.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/pirate_bomb/moment_stop
execute if entity @s[tag=pir.attack_animation] as @e[type=item_display,tag=pir.pirate_bomb.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/pirate_bomb/moment_stop