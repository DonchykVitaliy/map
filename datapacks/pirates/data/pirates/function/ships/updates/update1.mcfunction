#bookshelfs
execute as @e[type=marker,distance=..29,limit=1,tag=pir.update.bb,tag=pir.up_book,tag=!pir.update_done] at @s run function pirates:ships/updates/number1/book
#fletching_table
execute as @e[type=marker,distance=..29,limit=1,tag=pir.update.bb,tag=pir.up_arrow,tag=!pir.update_done] at @s run function pirates:ships/updates/number1/arrow
#gold
execute as @e[type=marker,distance=..29,limit=1,tag=pir.update.bb,tag=pir.up_gold,tag=!pir.update_done] at @s run function pirates:ships/updates/number1/gold

#clear items
clear @a firework_star[minecraft:custom_data={Tags:["pir.update","pir.up1","pir.selected_item"]}] 1