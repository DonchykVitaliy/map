item modify entity @s armor.head pirates:bell_destroy
scoreboard players set @s pir.score_bell.bb 0
playsound minecraft:entity.item.break player @a[distance=..10]
particle item{item:{id:"minecraft:iron_helmet",components:{"minecraft:custom_model_data":71006}}} ~ ~1.7 ~ 0.1 0.3 0.1 0.09 18