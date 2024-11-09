#rotation
schedule function pirates:mobs/work/mermaid_1/rotation 8t append

#death
execute unless entity @e[type=drowned,tag=pir.mermaid_1.mob,distance=..2.3] run function pirates:mobs/died/mermaid_1