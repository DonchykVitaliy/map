#move
execute if entity @s[tag=!pir.reload,tag=!pir.attack_animation_2,tag=!pir.attack_animation_3] unless predicate pirates:mobs/move run function pirates:mobs/work/davy_jones/move

#stay
execute if predicate pirates:mobs/move if entity @s[tag=pir.animation_move] run function pirates:mobs/work/davy_jones/stay

#damage
execute if entity @s[nbt=!{HurtTime:0s}] run function pirates:mobs/work/davy_jones/damage

#attack
execute if entity @s[tag=!pir.attack_animation_2,tag=!pir.attack_animation_3] if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] as @e[type=item_display,tag=pir.davy_jones.mob,limit=1,sort=nearest,tag=!pir.attack_animation,distance=..2] run function pirates:mobs/work/davy_jones/attack_play
execute as @e[type=item_display,tag=pir.davy_jones.mob,limit=1,sort=nearest,tag=pir.attack_animation,distance=..2] run function pirates:mobs/work/davy_jones/attack_stop
#attack 2
execute if score @s pir.attack_2.refresh matches ..0 if entity @s[tag=!pir.attack_animation_2,tag=!pir.attack_animation_3] if entity @a[distance=4..8,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/davy_jones/attack_play_2
execute if entity @s[tag=pir.attack_animation_2] run function pirates:mobs/work/davy_jones/attack_2
execute if score @s pir.attack_2.refresh matches 1.. run scoreboard players remove @s pir.attack_2.refresh 1
#attack 3
#execute if score @s pir.attack_3.refresh matches ..0 if entity @s[tag=!pir.reload,tag=!pir.attack_animation_3,tag=!pir.attack_animation_2] if entity @a[distance=4..7,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/boss/attack_play_3
#execute if entity @s[tag=pir.attack_animation_3] run function pirates:mobs/work/boss/attack_3
#execute if score @s pir.attack_3.refresh matches 1.. run scoreboard players remove @s pir.attack_3.refresh 1

#refresh_pistol
#execute if score @s pir.boss_pistol.refresh matches 4.. run function pirates:mobs/work/boss/reload_pistol

#health
execute unless entity @e[type=player,distance=..15] run schedule function pirates:mobs/work/davy_jones/regeneration 60t append
schedule function pirates:mobs/work/davy_jones/bossbar 10t append

#second state
execute if score @s pir.davy_bossbar.bb matches ..110 if entity @s[tag=!pir.second_state] run function pirates:mobs/work/davy_jones/second_state