#white
execute if entity @s[tag=pir.sail_white] run loot spawn ~ ~ ~ loot pirates:sail_white
execute if entity @s[tag=pir.sail_white] run playsound minecraft:item.book.put ambient @a[distance=..8] ~ ~ ~ 2 1.8
execute if entity @s[tag=pir.sail_white] run kill @s
#black
execute if entity @s[tag=pir.sail_pirates] run loot spawn ~ ~ ~ loot pirates:sail_pirates
execute if entity @s[tag=pir.sail_pirates] run playsound minecraft:item.book.put ambient @a[distance=..8] ~ ~ ~ 2 1.8
execute if entity @s[tag=pir.sail_pirates] run kill @s
#command
execute if entity @s[tag=pir.sail_command] run loot spawn ~ ~ ~ loot pirates:sail_command
execute if entity @s[tag=pir.sail_command] run playsound minecraft:item.book.put ambient @a[distance=..8] ~ ~ ~ 2 1.8
execute if entity @s[tag=pir.sail_command] run kill @s
#undead
execute if entity @s[tag=pir.sail_undead] run loot spawn ~ ~ ~ loot pirates:sail_undead
execute if entity @s[tag=pir.sail_undead] run playsound minecraft:item.book.put ambient @a[distance=..8] ~ ~ ~ 2 1.8
execute if entity @s[tag=pir.sail_undead] run kill @s
#color
execute if entity @s[tag=pir.sail_color] run loot spawn ~ ~ ~ loot pirates:sail_color
execute if entity @s[tag=pir.sail_color] run playsound minecraft:item.book.put ambient @a[distance=..8] ~ ~ ~ 2 1.8
execute if entity @s[tag=pir.sail_color] run kill @e[type=interaction,distance=..1.5,sort=nearest,limit=1,tag=pir.color_int]
execute if entity @s[tag=pir.sail_color] run kill @s