tag @s add pir.attack_animation_2
effect give @s slowness infinite 255 true

execute at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,gamemode=!creative,gamemode=!spectator] eyes
