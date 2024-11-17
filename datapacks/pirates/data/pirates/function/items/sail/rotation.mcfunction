data modify entity @s Rotation set from entity @e[type=#boat,distance=..1,limit=1,tag=pir.with_sail] Rotation

execute unless predicate pirates:in_boat run function pirates:items/sail/drop_item