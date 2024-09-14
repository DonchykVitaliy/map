playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~
playsound minecraft:heart player @a[distance=..8] ~ ~ ~ 0.8 1
particle item{item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":73015}}} ~ ~1.5 ~ 0.2 0.2 0.2 0.07 10
item replace entity @s weapon.mainhand with air
advancement grant @s only pirates:pirates/heart

tag @s add pir.heart.bb