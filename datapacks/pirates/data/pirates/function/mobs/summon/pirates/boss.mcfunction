summon minecraft:vindicator ~ ~1 ~ {Health:180f,attributes:[{id:"minecraft:generic.max_health",base:180},{id:"minecraft:generic.armor",base:15},{id:"minecraft:generic.attack_knockback",base:2},{id:"minecraft:generic.follow_range",base:20},{id:"minecraft:generic.knockback_resistance",base:0.2}],DeathLootTable:"pirates:mobs/pirates/boss",CustomName:'{"translate":"pir.mob_pirates.boss.bb"}',Tags:["pir.custom_mobs","pir.boss.mob"],HandItems:[{id:"minecraft:iron_sword",components:{custom_model_data:75000},Count:1b}],HandDropChances:[0.000F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],Passengers:[{id:"minecraft:item_display",Tags:["pir.custom_mobs","pir.boss.mob"],shadow_radius:0.5f,shadow_strength:1f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-360f,0f,360f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness: {"sky":20,"block":0},item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":79210,"minecraft:potion_contents":{custom_color:0}}}}]}

bossbar add pir.boss_health.bb {"color":"#ffffff","translate":"pir.mob_pirates.boss"}
bossbar set minecraft:pir.boss_health.bb players @a[distance=..50]
bossbar set minecraft:pir.boss_health.bb max 180
bossbar set minecraft:pir.boss_health.bb style notched_10
bossbar set minecraft:pir.boss_health.bb color yellow

scoreboard players set @e[type=vindicator,sort=nearest,tag=pir.boss.mob] pir.attack_3.refresh 0
scoreboard players set @e[type=vindicator,sort=nearest,tag=pir.boss.mob] pir.attack_2.refresh 0