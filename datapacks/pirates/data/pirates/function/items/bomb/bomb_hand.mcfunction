scoreboard players add @s pir.bomb_fire.bb 1

execute if score @s pir.bomb_fire.bb matches 60.. run clear @s carrot_on_a_stick[minecraft:custom_model_data=73003,minecraft:custom_data={Tags:["pir.bomb.bb","pir.rcm_stick.bb"]}] 1
execute if score @s pir.bomb_fire.bb matches 60.. run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:1,ignited:1b}
execute if score @s pir.bomb_fire.bb matches 60.. run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}},limit=1,sort=nearest]
execute if score @s pir.bomb_fire.bb matches 60.. run execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_model_data":73003,"minecraft:custom_data":{Tags:["pir.bomb.bb"]}}}]}] run tag @s remove pir.bomb_fire.bb
execute if score @s pir.bomb_fire.bb matches 60.. run scoreboard players set @s pir.bomb_fire.bb 0