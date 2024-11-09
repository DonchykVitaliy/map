particle minecraft:small_flame ~ ~0.3 ~ 0 0.1 0 0 1

execute if entity @s[tag=!pir.time] run function pirates:items/bomb/time
scoreboard players add @s pir.bomb_fire.bb 1

execute if score @s pir.bomb_fire.bb matches 60.. run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:1,ignited:1b}
execute if score @s pir.bomb_fire.bb matches 60.. run kill @e[type=item_display,tag=pir.bomb.bb,distance=..1,limit=1,sort=nearest]
execute if score @s pir.bomb_fire.bb matches 60.. run kill @s