tag @e[type=turtle,distance=..2,limit=1,sort=nearest,tag=!pir.ride_turtle] add pir.ride_turtle
tag @e[type=turtle,distance=..2,limit=1,sort=nearest,tag=pir.ride_turtle] add pir.custom_mobs
ride @s mount @e[type=turtle,distance=..2,limit=1,sort=nearest,tag=pir.ride_turtle]
execute if entity @e[distance=..1.5,tag=pir.ride_turtle,type=turtle] run item modify entity @s weapon.mainhand pirates:carrot_on_a_stick
execute if entity @e[distance=..1.5,tag=pir.ride_turtle,type=turtle] run advancement grant @s only pirates:pirates/ride_turtle
execute if entity @e[distance=..1.5,tag=pir.ride_turtle,type=turtle] run tag @s add pir.ride_turtle