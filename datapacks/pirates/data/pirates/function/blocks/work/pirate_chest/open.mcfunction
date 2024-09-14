clear @a[limit=1,distance=..2] carrot_on_a_stick[minecraft:custom_data={Tags:["pir.pirate_key.bb"]}] 1
advancement grant @a[distance=..2] only pirates:pirates/key

tag @s add pir.chest_opened
playsound block.chest.open block @a[distance=..7]
playsound block.amethyst_block.break block @a[distance=..7]
setblock ~ ~1 ~ player_head

