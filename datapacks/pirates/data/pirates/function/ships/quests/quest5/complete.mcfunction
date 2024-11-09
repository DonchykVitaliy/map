clear @s written_book[minecraft:custom_data={Tags:["pir.quest.bb","pir.quest_alcohol","pir.selected_item"]}] 1
loot spawn ~ ~ ~ loot pirates:quests/quest5_done
scoreboard players set @s pir.quest_alcohol 0
execute unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["pir.quest.bb","pir.quest_alcohol","pir.selected_item"]}}}]}] run tag @s remove pir.quest5
tag @s remove pir.quest.coconut
tag @s remove pir.quest.berry
tag @s remove pir.quest.pumpkin
tag @s remove pir.quest.rum
tag @s remove pir.quest.beer
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_complete_5.bb"}]
advancement grant @s only pirates:pirates/quest