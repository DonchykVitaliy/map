bossbar set pir.boss_health.bb name {"translate":"pir.mob_pirates.boss_s"}
particle minecraft:angry_villager ~ ~1.5 ~ 0.1 0.3 0.1 0.1 4
playsound minecraft:entity.ravager.stunned hostile @a[distance=..10] ~ ~ ~ 1 1.2
data merge entity @s {attributes:[{id:"minecraft:generic.max_health",base:180},{id:"minecraft:generic.armor",base:15},{id:"minecraft:generic.attack_knockback",base:3},{id:"minecraft:generic.follow_range",base:20},{id:"minecraft:generic.knockback_resistance",base:0.4}]}
tag @s add pir.second_state