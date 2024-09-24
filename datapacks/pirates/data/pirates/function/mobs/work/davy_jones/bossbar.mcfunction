execute as @e[tag=pir.davy_jones.mob,type=vindicator] store result score @s pir.davy_bossbar.bb run data get entity @s Health
#bossbar set minecraft:pir.boss_health.bb players @a[distance=..50]

schedule clear pirates:mobs/work/davy_jones/bossbar