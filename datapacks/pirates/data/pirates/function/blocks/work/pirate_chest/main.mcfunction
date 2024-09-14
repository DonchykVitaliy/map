execute if items entity @a[distance=..2] weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={Tags:["pir.pirate_key.bb"]}] if entity @s[tag=!pir.chest_opened] run function pirates:blocks/work/pirate_chest/open

execute if entity @s[tag=!pir.chest_opened] unless items entity @a[distance=..2] weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={Tags:["pir.pirate_key.bb"]}] run function pirates:blocks/work/pirate_chest/closed

