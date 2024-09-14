playsound minecraft:item.book.page_turn block @a[distance=..10] ~ ~ ~
clear @s carrot_on_a_stick[minecraft:custom_model_data=73000,minecraft:custom_data={Tags:["pir.bottle_with_map.bb","pir.rcm_stick.bb"]}] 1
loot spawn ~ ~ ~ loot pirates:bottle_with_map_loot
playsound minecraft:block.glass.break block @a[distance=..10] ~ ~ ~ 0.5 1.4
scoreboard players set @s pir.use_stick.bb 0