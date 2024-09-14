execute as @e[tag=pir.boss.mob,type=vindicator] store result score @s pir.boss_health.bb run data get entity @s Health
#bossbar set minecraft:pir.boss_health.bb players @a[distance=..50]

schedule clear pirates:mobs/work/boss/bossbar