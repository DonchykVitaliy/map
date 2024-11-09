clear @s written_book[minecraft:custom_data={Tags:["pir.quest.bb","pir.quest_pirate","pir.selected_item"]}] 1
loot spawn ~ ~ ~ loot pirates:quests/quest2_done
scoreboard players set @s pir.quest_pirate 0
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest.bb","pir.quest_pirate","pir.selected_item"]}}}]}] run tag @s remove pir.quest2
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_complete_2.bb"}]
advancement grant @s only pirates:pirates/quest