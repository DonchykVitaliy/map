scoreboard players add @s pir.mob_score 1

execute if score @s pir.mob_score matches 90.. run function pirates:mobs/work/boss/mob_score

execute if score @s pir.mob_moment matches 1 run function pirates:mobs/work/boss/moment1
execute if score @s pir.mob_moment matches 2 run function pirates:mobs/work/boss/moment2
execute if score @s pir.mob_moment matches 3 run function pirates:mobs/work/boss/moment3