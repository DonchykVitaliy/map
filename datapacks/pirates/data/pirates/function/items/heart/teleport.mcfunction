tag @s remove pir.heart.bb
attribute @s minecraft:generic.scale base set 1

bossbar add pir.davy_jones_health.bb {"translate":"pir.mob_ocean.davy_jones"}
bossbar set minecraft:pir.davy_jones_health.bb players @a[distance=..50]
bossbar set minecraft:pir.davy_jones_health.bb max 220
bossbar set minecraft:pir.davy_jones_health.bb style notched_12
bossbar set minecraft:pir.davy_jones_health.bb color green
scoreboard players set *bossbar.spawn_davy pir.davy_bossbar.bb 0

scoreboard players set @s pir.heart.bb 0

tp @a[distance=..3] ~ ~1 ~3