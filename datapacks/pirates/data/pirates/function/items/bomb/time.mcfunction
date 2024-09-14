scoreboard players operation @s pir.bomb_fire.bb = @p[scores={pir.bomb_fire.bb=1..}] pir.bomb_fire.bb
execute as @a[scores={pir.bomb_fire.bb=1..},nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":73003,"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}]}] run scoreboard players set @s pir.bomb_fire.bb 0
tag @s add pir.time