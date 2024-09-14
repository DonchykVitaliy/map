scoreboard players set @s pir.quest_cheese 0
tag @s add pir.quest4
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_take_4.bb"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3