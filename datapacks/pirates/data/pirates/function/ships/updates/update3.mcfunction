#cannon
execute as @e[type=item_display,distance=..29,limit=1,tag=pir.update.bb,tag=pir.up_cannon,tag=!pir.update_done] at @s run function pirates:ships/updates/number3/cannon

#advancement
advancement grant @s only pirates:pirates/upgrade

#clear items
clear @a firework_star[minecraft:custom_data={Tags:["pir.update","pir.up3","pir.selected_item"]}] 1