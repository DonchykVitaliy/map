#move
execute if entity @s[tag=!pir.attack_animation,tag=!pir.attack_animation_2,tag=!pir.attack_animation_3,tag=!pir.attack_animation4] unless predicate pirates:mobs/move run function pirates:mobs/work/davy_jones/move

#stay
execute if predicate pirates:mobs/move if entity @s[tag=pir.animation_move,tag=!pir.attack_animation_3] run function pirates:mobs/work/davy_jones/stay

#damage
execute if entity @s[nbt=!{HurtTime:0s}] run function pirates:mobs/work/davy_jones/damage

#attack
execute if entity @s[tag=!pir.attack_animation_2,tag=!pir.attack_animation,tag=!pir.attack_animation_3,tag=!pir.attack_animation4] if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/davy_jones/attack_play
execute if entity @s[tag=pir.attack_animation] run function pirates:mobs/work/davy_jones/attack_stop
#attack 2
execute if score @s pir.attack_2.refresh matches ..0 if entity @s[tag=!pir.attack_animation,tag=!pir.attack_animation_3,tag=!pir.attack_animation4,tag=!pir.attack_animation_2] if entity @a[distance=4..8,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/davy_jones/attack_play_2
execute if entity @s[tag=pir.attack_animation_2] run function pirates:mobs/work/davy_jones/attack_2
execute if score @s pir.attack_2.refresh matches 1.. run scoreboard players remove @s pir.attack_2.refresh 1
#attack 3
execute if score @s pir.attack_3.refresh matches ..0 if entity @s[tag=!pir.attack_animation,tag=!pir.attack_animation_3,tag=!pir.attack_animation4,tag=!pir.attack_animation_2] if entity @a[distance=1..4,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/davy_jones/attack_play_3
execute if entity @s[tag=pir.attack_animation_3] run function pirates:mobs/work/davy_jones/attack_3
execute if score @s pir.attack_3.refresh matches 1.. run scoreboard players remove @s pir.attack_3.refresh 1
#attack 4
execute if score @s pir.attack_4.refresh matches ..0 if entity @s[tag=pir.second_state,tag=!pir.attack_animation,tag=!pir.attack_animation_3,tag=!pir.attack_animation4,tag=!pir.attack_animation_2] if entity @a[distance=..2,gamemode=!creative,gamemode=!spectator] run function pirates:mobs/work/davy_jones/attack_play_4
execute if entity @s[tag=pir.attack_animation4] run function pirates:mobs/work/davy_jones/attack4_stop
execute if score @s pir.attack_4.refresh matches 1.. run scoreboard players remove @s pir.attack_4.refresh 1

#sound
execute if entity @a[distance=..8] if score @s pir.moment_time matches ..0 run function pirates:mobs/work/davy_jones/sound
execute if score @s pir.moment_time matches 1.. run scoreboard players remove @s pir.moment_time 1

#health
execute unless entity @e[type=player,distance=..15] run schedule function pirates:mobs/work/davy_jones/regeneration 60t append
schedule function pirates:mobs/work/davy_jones/bossbar 10t append

#second state
execute if score @s pir.davy_bossbar.bb matches ..110 if entity @s[tag=!pir.second_state] run function pirates:mobs/work/davy_jones/second_state