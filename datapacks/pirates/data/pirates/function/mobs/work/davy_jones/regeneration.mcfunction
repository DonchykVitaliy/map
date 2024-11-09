
execute as @e[type=vindicator,tag=pir.davy_jones.mob] at @s unless entity @a[distance=..15] run effect give @s instant_health 1 2 true

schedule clear pirates:mobs/work/davy_jones/regeneration