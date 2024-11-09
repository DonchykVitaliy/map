#bookshelfs
execute as @e[type=marker,distance=..29,limit=1,tag=pir.update.bb,tag=pir.up_kelp,tag=!pir.update_done] at @s run function pirates:ships/updates/number2/kelp
#fletching_table
execute as @e[type=marker,distance=..29,limit=1,tag=pir.update.bb,tag=pir.up_barrel,tag=!pir.update_done] at @s run function pirates:ships/updates/number2/barrel
#gold
execute as @e[type=marker,distance=..29,limit=1,tag=pir.update.bb,tag=pir.up_lantern,tag=!pir.update_done] at @s run function pirates:ships/updates/number2/lantern

#clear items
clear @a firework_star[minecraft:custom_data={Tags:["pir.update","pir.up2","pir.selected_item"]}] 1