clear @s written_book[minecraft:custom_data={Tags:["pir.quest.bb","pir.quest_cannon","pir.selected_item"]}] 1
loot spawn ~ ~ ~ loot pirates:quests/quest3_done
scoreboard players set @s pir.quest_cannon 0
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest.bb","pir.quest_cannon","pir.selected_item"]}}}]}] run tag @s remove pir.quest3
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_complete_3.bb"}]
advancement grant @s only pirates:pirates/quest