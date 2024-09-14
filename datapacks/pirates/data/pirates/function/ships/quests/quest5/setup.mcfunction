scoreboard players set @s pir.quest_alcohol 0
tag @s add pir.quest5
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_take_5.bb"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3