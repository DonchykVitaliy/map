execute if data entity @s {HurtTime:10s} as @e[type=item_display,tag=pir.pirate_pistol.mob,limit=1,sort=nearest,tag=!pir.damage_animation] run function pirates:mobs/work/pirate_pistol/damage_give
execute if data entity @s {HurtTime:1s} as @e[type=item_display,tag=pir.pirate_pistol.mob,limit=1,sort=nearest,tag=pir.damage_animation] run function pirates:mobs/work/pirate_pistol/damage_remove
