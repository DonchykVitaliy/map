setblock ~ ~ ~ air

scoreboard players set *random_trader pir.mob_random 0
execute store result score *random_trader pir.mob_random run random value 1..2

execute if score *random_trader pir.mob_random matches 1 run function pirates:mobs/summon/traders/trader
execute if score *random_trader pir.mob_random matches 2 run function pirates:mobs/summon/traders/adventurer