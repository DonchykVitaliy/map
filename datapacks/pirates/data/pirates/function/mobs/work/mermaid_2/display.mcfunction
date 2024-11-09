#rotation
schedule function pirates:mobs/work/mermaid_2/rotation 8t append

#death
execute unless entity @e[type=drowned,tag=pir.mermaid_2.mob,distance=..2.3] run function pirates:mobs/died/mermaid_2