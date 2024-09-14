execute if entity @a[distance=..2.4,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] if entity @s[tag=south.rot] positioned ~ ~ ~-1 run tag @e[tag=pir.two_cannon,distance=..0.8,limit=1,sort=nearest] add pir.cannon_shoot
execute if entity @a[distance=..2.4,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] if entity @s[tag=east.rot] positioned ~-1 ~ ~ run tag @e[tag=pir.two_cannon,distance=..0.8,limit=1,sort=nearest] add pir.cannon_shoot
execute if entity @a[distance=..2.4,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] if entity @s[tag=west.rot] positioned ~1 ~ ~ run tag @e[tag=pir.two_cannon,distance=..0.8,limit=1,sort=nearest] add pir.cannon_shoot
execute if entity @a[distance=..2.4,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] if entity @s[tag=north.rot] positioned ~ ~ ~1 run tag @e[tag=pir.two_cannon,distance=..0.8,limit=1,sort=nearest] add pir.cannon_shoot

data remove entity @s interaction