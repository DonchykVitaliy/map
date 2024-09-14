kill @s
execute if entity @s[tag=pir.gold_cage] run loot spawn ~ ~ ~ loot pirates:parrot_cage_gold
execute if entity @s[tag=pir.iron_cage] run loot spawn ~ ~ ~ loot pirates:parrot_cage_iron
playsound block.chain.break block @a[distance=..10] ~ ~ ~