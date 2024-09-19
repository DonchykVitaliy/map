execute store result score @s pir.poison_chans.bb run random value 0..2
execute if score @s pir.poison_chans.bb matches 2.. as @e[distance=..5,nbt=!{HurtTime:0s}] run effect give @s poison 6 0 false
execute if score @s pir.poison_chans.bb matches 2.. run scoreboard players set @s pir.poison_chans.bb 0

scoreboard players set @s pir.poison_sword.bb 0