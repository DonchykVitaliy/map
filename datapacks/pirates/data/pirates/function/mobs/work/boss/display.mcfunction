#rotation
schedule function pirates:mobs/work/boss/rotation 8t append

#death
execute unless entity @e[type=vindicator,tag=pir.boss.mob,distance=..2.3] run function pirates:mobs/died/boss

#bossbar
execute as @a[distance=..50] run bossbar set pir.boss_health.bb players @s
execute unless entity @a[distance=..50] run bossbar remove minecraft:pir.boss_health.bb
execute store result bossbar pir.boss_health.bb value run data get entity @e[type=vindicator,tag=pir.boss.mob,distance=..2.3,limit=1] Health