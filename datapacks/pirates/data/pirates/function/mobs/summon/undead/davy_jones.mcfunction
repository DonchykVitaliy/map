summon minecraft:vindicator ~ ~1 ~ {Health:220f,attributes:[{id:"minecraft:burning_time",base:1.5},{id:"minecraft:knockback_resistance",base:0.3},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:max_health",base:220},{id:"minecraft:armor",base:20},{id:"minecraft:attack_knockback",base:2.5},{id:"minecraft:water_movement_efficiency",base:5},{id:"minecraft:follow_range",base:40}],Silent:1b,DeathLootTable:"pirates:mobs/ocean/davy_jones",CustomName:'{"translate":"pir.mob_ocean.davy_jones.bb"}',Tags:["pir.custom_mobs","pir.davy_jones.mob"],HandItems:[{id:"minecraft:iron_sword",components:{custom_model_data:75000},Count:1b}],HandDropChances:[0.000F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],Passengers:[{id:"minecraft:item_display",Tags:["pir.custom_mobs","pir.davy_jones.mob"],shadow_radius:0.5f,shadow_strength:1f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-360f,0f,360f],translation:[0f,0f,0f],scale:[1f,1f,1f]},brightness: {"sky":20,"block":0},item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data":79380,"minecraft:potion_contents":{custom_color:0}}}}]}

#
bossbar add pir.davy_jones_health.bb {"translate":"pir.mob_ocean.davy_jones"}
bossbar set minecraft:pir.davy_jones_health.bb players @a[distance=..50]
bossbar set minecraft:pir.davy_jones_health.bb max 220
bossbar set minecraft:pir.davy_jones_health.bb style notched_12
bossbar set minecraft:pir.davy_jones_health.bb color green
#

scoreboard players set @e[type=vindicator,sort=nearest,tag=pir.davy_jones.mob] pir.moment_time 120
scoreboard players set @e[type=vindicator,sort=nearest,tag=pir.davy_jones.mob] pir.attack_2.refresh 300
scoreboard players set @e[type=vindicator,sort=nearest,tag=pir.davy_jones.mob] pir.attack_3.refresh 0
scoreboard players set @e[type=vindicator,sort=nearest,tag=pir.davy_jones.mob] pir.attack_4.refresh 300