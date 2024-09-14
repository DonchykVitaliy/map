execute if entity @s[gamemode=!creative] if items entity @s weapon.* minecraft:glass_bottle run clear @s glass_bottle 1
tag @s remove pir.coconut_drink

advancement revoke @s only pirates:work/coconut_drink