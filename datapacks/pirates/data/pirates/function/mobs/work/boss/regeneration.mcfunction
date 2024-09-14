
execute as @e[type=vindicator,tag=pir.boss.mob] at @s unless entity @a[distance=..15] run effect give @s instant_health 1 0 true

schedule clear pirates:mobs/work/boss/regeneration