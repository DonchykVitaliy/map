execute as @a[tag=pir.ride_turtle,distance=..3,sort=nearest] at @s unless entity @e[type=turtle,tag=pir.ride_turtle,distance=..0.6] run tag @s remove pir.ride_turtle
tag @s remove pir.ride_turtle