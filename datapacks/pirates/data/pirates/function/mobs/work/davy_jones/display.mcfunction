#rotation
schedule function pirates:mobs/work/davy_jones/rotation 8t append

#death
execute unless entity @e[type=vindicator,tag=pir.davy_jones.mob,distance=..2.3] run function pirates:mobs/died/davy_jones

#bossbar
execute as @a[distance=..50] run bossbar set pir.davy_jones_health.bb players @s
execute unless entity @a[distance=..50] run bossbar remove minecraft:pir.davy_jones_health.bb
execute store result bossbar pir.davy_jones_health.bb value run data get entity @e[type=vindicator,tag=pir.davy_jones.mob,distance=..2.3,limit=1] Health