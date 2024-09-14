summon minecraft:drowned ~ ~ ~ {Health:120f,attributes:[{id:"minecraft:generic.max_health",base:120},{id:"minecraft:generic.armor",base:10},{id:"minecraft:generic.water_movement_efficiency",base:5}],Silent:1b,DeathLootTable:"pirates:mobs/ocean/ariel",CustomName:'{"translate":"pir.mob_ocean.ariel.bb"}',Tags:["pir.custom_mobs","pir.ariel.mob"],HandItems:[{id:"minecraft:iron_sword",components:{custom_model_data:75000},Count:1b}],HandDropChances:[0.000F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],Passengers:[{id:"minecraft:item_display",Tags:["pir.custom_mobs","pir.ariel.mob"],shadow_radius:0.5f,shadow_strength:1f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-360f,0f,360f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness: {"sky":20,"block":0},item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":79040,"minecraft:potion_contents":{custom_color:0}}}}]}
scoreboard players set @e[type=drowned,tag=pir.ariel.mob,limit=1,sort=nearest] pir.attack_3.refresh 0

bossbar add pir.ariel_health.bb {"color":"#54E8FF","translate":"pir.mob_ocean.ariel"}
bossbar set minecraft:pir.ariel_health.bb players @a[distance=..50]
bossbar set minecraft:pir.ariel_health.bb max 120
bossbar set minecraft:pir.ariel_health.bb style notched_6
bossbar set minecraft:pir.ariel_health.bb color blue

playsound minecraft:ariel_spawn hostile @a[distance=..15] ~ ~ ~ 1.9 0.9
particle minecraft:bubble_column_up ~ ~0.65 ~ 0.25 0.4 0.25 0 200
particle minecraft:cloud ~ ~0.7 ~ 0.25 0.5 0.25 0.03 50