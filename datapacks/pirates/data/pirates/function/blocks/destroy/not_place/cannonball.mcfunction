kill @s
execute unless entity @s[tag=pir.fire_cannonball.bb] run loot spawn ~ ~ ~ loot pirates:cannonball
execute if entity @s[tag=pir.fire_cannonball.bb] run loot spawn ~ ~ ~ loot pirates:fire_cannonball
playsound block.stone.break block @a[distance=..10] ~ ~ ~ 2 0