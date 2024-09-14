#move
execute unless predicate pirates:mobs/move run function pirates:mobs/work/drowned_1/move

#stay
execute if predicate pirates:mobs/move if entity @s[tag=pir.animation_move] run function pirates:mobs/work/drowned_1/stay

#damage
execute if entity @s[nbt=!{HurtTime:0s}] run function pirates:mobs/work/drowned_1/damage

#attack
execute if items entity @s[tag=!pir.shoot_pirate] weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]] run function pirates:mobs/make/undead/drowned_1/shoot_tag
execute if entity @s[tag=pir.shoot_pirate] as @e[type=minecraft:arrow,distance=..2.5,nbt={inGround:0b},tag=!pir.arrow_pirate] run function pirates:mobs/make/undead/drowned_1/shoot
execute unless items entity @s[tag=pir.shoot_pirate] weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]] run tag @s remove pir.shoot_drowned
execute as @e[type=item_display,tag=pir.drowned_1.mob,limit=1,sort=nearest,tag=pir.attack_animation,distance=..2] run function pirates:mobs/work/drowned_1/attack_stop

#moments
execute unless entity @s[tag=pir.animation_move] unless entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] as @e[type=item_display,tag=pir.drowned_1.mob,limit=1,sort=nearest,tag=!pir.attack_animation,tag=!pir.damage_animation,tag=!pir.animation_move,tag=!pir.animation_moment] run function pirates:mobs/work/drowned_1/moment_main
execute unless entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.drowned_1.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/drowned_1/moment_loop
execute if entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.drowned_1.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/drowned_1/moment_stop