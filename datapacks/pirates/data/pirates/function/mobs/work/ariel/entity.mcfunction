#move
execute unless predicate pirates:mobs/move if entity @s[tag=!pir.attack_animation,tag=!pir.attack_animation_2,tag=!pir.attack_animation_4] run function pirates:mobs/work/ariel/move

#stay
execute if predicate pirates:mobs/move if entity @s[tag=pir.animation_move,tag=!pir.attack_animation,tag=!pir.attack_animation_2,tag=!pir.attack_animation_4] run function pirates:mobs/work/ariel/stay

#damage
execute if entity @s[nbt=!{HurtTime:0s}] run function pirates:mobs/work/ariel/damage

#attack_1
execute if entity @s[tag=!pir.second_state,tag=!pir.attack_animation_2,tag=!pir.attack_animation_4] if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/ariel/attack_play_3
execute if entity @s[tag=pir.second_state,tag=!pir.attack_animation_2s,tag=!pir.attack_animation_4] if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/ariel/attack_play_3s
execute if entity @s[tag=pir.attack_animation_2] run function pirates:mobs/work/ariel/attack_stop_3
execute if entity @s[tag=pir.attack_animation_2s] run function pirates:mobs/work/ariel/attack_stop_3s
#attack_2
execute if entity @s[tag=!pir.second_state,tag=!pir.attack_animation,tag=!pir.attack_animation_2,tag=!pir.attack_animation_4] if entity @a[distance=7..9,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/ariel/attack_play
execute if entity @s[tag=pir.second_state,tag=!pir.attack_animation,tag=!pir.attack_animation_2,tag=!pir.attack_animation_4] if entity @a[distance=4..11,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/ariel/attack_play_2
execute if entity @s[tag=pir.attack_animation] run function pirates:mobs/work/ariel/attack_stop
#attack_3
execute if score @s pir.attack_3.refresh matches ..0 if entity @s[tag=pir.second_state,tag=!pir.attack_animation,tag=!pir.attack_animation_2,tag=!pir.attack_animation_4] if entity @a[distance=..9,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/ariel/attack_play_4
execute if entity @s[tag=pir.attack_animation_4] run function pirates:mobs/work/ariel/attack_stop_4
execute if score @s pir.attack_3.refresh matches 1.. run scoreboard players remove @s pir.attack_3.refresh 1


#moments
execute if entity @s[tag=!pir.attack_animation,tag=!pir.attack_animation_4] if entity @a[distance=..7,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/ariel/moment_main
#execute unless entity @s[tag=pir.animation_move] unless entity @a[distance=..6,gamemode=!creative,gamemode=!spectator] as @e[type=item_display,tag=pir.ariel.mob,limit=1,sort=nearest,tag=!pir.attack_animation,tag=!pir.damage_animation,tag=!pir.animation_move,tag=!pir.animation_moment] run function pirates:mobs/work/ariel/moment_main
#execute unless entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.ariel.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/ariel/moment_loop
#execute if entity @s[tag=pir.animation_move] as @e[type=item_display,tag=pir.ariel.mob,limit=1,sort=nearest,tag=pir.animation_moment] run function pirates:mobs/work/ariel/moment_stop

#health
execute unless entity @e[type=player,distance=..8] run schedule function pirates:mobs/work/ariel/regeneration 60t append
schedule function pirates:mobs/work/ariel/bossbar 10t append

#second state
execute if score @s pir.ariel_health.bb matches ..60 if entity @s[tag=!pir.second_state] run function pirates:mobs/work/ariel/second_state