stopsound @a[distance=..10] hostile item.crossbow.loading_end
scoreboard players add @s pir.attack_time 1

execute if score @s pir.attack_time matches 2.. run function pirates:mobs/make/pirates/pirate_bomb/drop_bomb
execute if score @s pir.attack_time matches 2.. run function pirates:mobs/work/pirate_bomb/attack_play
execute if score @s pir.attack_time matches 2.. run scoreboard players set @s pir.attack_time 0

item modify entity @s weapon.mainhand pirates:block_pirate_with_bomb