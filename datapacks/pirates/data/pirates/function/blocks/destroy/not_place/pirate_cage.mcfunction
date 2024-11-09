kill @s
execute if entity @s[tag=pir.no_skeleton] run loot spawn ~ ~ ~ loot pirates:pirate_cage_loot1
execute if entity @s[tag=!pir.no_skeleton] run loot spawn ~ ~ ~ loot pirates:pirate_cage_loot
playsound block.chain.break block @a[distance=..10] ~ ~ ~ 2 0.7