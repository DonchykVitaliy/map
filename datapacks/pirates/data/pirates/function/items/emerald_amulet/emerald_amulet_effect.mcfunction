effect give @s regeneration 10 1
effect give @s instant_health 1 0 true
playsound minecraft:block.glass.break player @a[distance=..7] ~ ~ ~ 1 1.3
playsound minecraft:block.chain.break player @a[distance=..7] ~ ~ ~ 0.7 1.4
particle item{item:{id:"minecraft:firework_star",components:{"minecraft:custom_model_data":73021}}} ~ ~1.1 ~ 0 0.2 0 0.07 10

tag @s add pir.emerald_amulet
clear @s firework_star[minecraft:custom_model_data=73021] 1
team join pir.emerald_amulet @e[distance=..15]