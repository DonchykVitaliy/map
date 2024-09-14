scoreboard players set @s pir.quest_pirate 0
tag @s add pir.quest2
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_take_2.bb"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3