scoreboard players operation @s pir.quest_ore += @s pir.quest_ored
scoreboard players set @s pir.quest_ored 0
execute if score @s pir.quest_ore matches 15.. run function pirates:ships/quests/quest1/complete