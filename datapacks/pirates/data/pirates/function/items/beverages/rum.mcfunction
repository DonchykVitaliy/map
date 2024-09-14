clear @s glass_bottle 1
loot give @s loot pirates:mug
tag @s remove pir.eat_rum
tag @s remove pir.alcohol_eat
tag @s add pir.t_intoxication
scoreboard players add @s pir.t_intoxication.bb 1
scoreboard players set @s pir.eat_honey.bb 0