#move
execute unless predicate pirates:mobs/move run function pirates:mobs/work/pirate_pistol/move

#stay
execute if predicate pirates:mobs/move if entity @s[tag=pir.animation_move] run function pirates:mobs/work/pirate_pistol/stay

#damage
execute if entity @s[nbt=!{HurtTime:0s}] run function pirates:mobs/work/pirate_pistol/damage

#attack
execute if items entity @s[tag=!pir.shoot_pirate] weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]] run function pirates:mobs/make/pirates/pirate_pistol/shoot_tag
execute if entity @s[tag=pir.shoot_pirate] as @e[type=minecraft:arrow,distance=..2.5,nbt={inGround:0b},tag=!pir.arrow_pirate] run function pirates:mobs/make/pirates/pirate_pistol/shoot
execute unless items entity @s[tag=pir.shoot_pirate] weapon.mainhand minecraft:crossbow[minecraft:charged_projectiles=[{id:"minecraft:arrow",count:1}]] run tag @s remove pir.shoot_pirate
execute as @e[type=item_display,tag=pir.pirate_pistol.mob,limit=1,sort=nearest,tag=pir.attack_animation,distance=..2] run function pirates:mobs/work/pirate_pistol/attack_stop

#moments
execute unless entity @s[tag=pir.animation_move] unless entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] as @e[type=item_display,tag=pir.pirate_pistol.mob,limit=1,sort=nearest,tag=!pir.attack_animation,tag=!pir.damage_animation,tag=!pir.animation_move,tag=!pir.animation_moment] run function pirates:mobs/work/pirate_pistol/moment_main
execute unless entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.pirate_pistol.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/pirate_pistol/moment_loop
execute if entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.pirate_pistol.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/pirate_pistol/moment_stop