scoreboard players set @s pir.quest_cannon 0
tag @s add pir.quest3
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_take_3.bb"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3