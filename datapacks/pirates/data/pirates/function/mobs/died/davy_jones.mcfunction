scoreboard players add @s pir.death_time 1
particle poof ~ ~-1.7 ~ 0.4 0 0.4 0.1 1 normal
particle block{block_state:"minecraft:stone"} ~ ~-1.7 ~ 0.2 0 0.2 0.1 1 normal

execute if score @s pir.death_time matches 1 run playsound heart hostile @a[distance=..15] ~ ~ ~
execute if score @s pir.death_time matches 1 run playsound minecraft:block.bell.resonate hostile @a[distance=..15] ~ ~ ~ 1 0.7
execute if score @s pir.death_time matches 1 run data modify entity @s item.components."minecraft:custom_model_data" set value 79382
execute if score @s pir.death_time matches 1 run playsound minecraft:block.calcite.break block @a[distance=..15] ~ ~ ~ 0.3 0.1
execute if score @s pir.death_time matches 10 run playsound minecraft:block.calcite.break block @a[distance=..15] ~ ~ ~ 0.3 0.1
execute if score @s pir.death_time matches 20 run playsound minecraft:block.calcite.break block @a[distance=..15] ~ ~ ~ 0.3 0.1
execute if score @s pir.death_time matches 30 run playsound minecraft:block.calcite.break block @a[distance=..15] ~ ~ ~ 0.3 0.1
execute if score @s pir.death_time matches 40 run playsound minecraft:block.calcite.break block @a[distance=..15] ~ ~ ~ 0.3 0.1
execute if score @s pir.death_time matches 50 run playsound minecraft:block.calcite.break block @a[distance=..15] ~ ~ ~ 0.3 0.1
execute if score @s pir.death_time matches 60 run playsound minecraft:block.calcite.break block @a[distance=..15] ~ ~ ~ 0.3 0.1

#execute if score @s pir.death_time matches 19.. run advancement grant @a[distance=..10] only pirates:pirates/
execute if score @s pir.death_time matches 60.. run bossbar remove pir.davy_jones_health.bb
execute if score @s pir.death_time matches 60.. run kill @s
