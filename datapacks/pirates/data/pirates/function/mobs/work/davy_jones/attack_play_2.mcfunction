tag @s add pir.attack_animation_2
effect give @s slowness infinite 255 true

playsound minecraft:entity.player.breath hostile @a[distance=..14] ~ ~ ~ 2 0.9
execute at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,gamemode=!creative,gamemode=!spectator] eyes
