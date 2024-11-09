scoreboard players set @s pir.quest_ore 0
scoreboard players set @s pir.quest_ored 0
tag @s add pir.quest1
tellraw @a ["",{"selector":"@s"},{"translate":"pir.quest.chat_take_1.bb"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3

