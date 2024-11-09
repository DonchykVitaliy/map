#rotation
schedule function pirates:mobs/work/ariel/rotation 8t append

#death
execute unless entity @e[type=drowned,tag=pir.ariel.mob,distance=..2.3] run function pirates:mobs/died/ariel

#bossbar
execute as @a[distance=..50] run bossbar set pir.ariel_health.bb players @s
execute unless entity @a[distance=..50] run bossbar remove pir.ariel_health.bb
execute store result bossbar pir.ariel_health.bb value run data get entity @e[type=drowned,tag=pir.ariel.mob,distance=..2.3,limit=1] Health
