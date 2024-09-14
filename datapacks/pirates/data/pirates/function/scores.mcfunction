scoreboard players set @a pir.rifle_reload.bb 0
scoreboard players set @a pir.pistol_reload.bb 0
scoreboard players set @a pir.gold_horn.bb 0

#turtle_soup
execute as @a[tag=!pir.soup_adv] if items entity @s weapon.* minecraft:suspicious_stew[minecraft:custom_model_data=77000] run scoreboard players set @s pir.turtle_soup.bb 1
execute as @a[tag=!pir.soup_adv] if score @s pir.soup_eat.bb matches 1.. if score @s pir.turtle_soup.bb matches 1.. run function pirates:items/turtle_soup
execute as @a[tag=!pir.soup_adv] if score @s pir.turtle_soup.bb matches 1.. unless items entity @s weapon.* minecraft:suspicious_stew[minecraft:custom_model_data=77000] run scoreboard players set @s pir.turtle_soup.bb 0

#smoking_pipe
execute as @a[tag=pir.smoke.bb] run function pirates:items/smoking_pipe/time

#bell hat
execute as @a[tag=pir.bell_hat,nbt=!{Inventory:[{id:"minecraft:firework_star",Slot:103b,tag:{Tags:["pir.bell_hat.bb"]}}]}] run function pirates:items/hat/bell_hat_remove_tag

#amethyst_amulet
execute as @a[tag=pir.amethyst_amulet] run function pirates:items/amethyst_amulet/amethyst_amulet_clear

#emerald_amulet
execute as @a[tag=pir.emerald_amulet] run function pirates:items/emerald_amulet/emerald_amulet_timer

#saddle_with_amethyst
execute as @a at @s on vehicle run function pirates:items/saddle_with_amethyst

#alcohol
execute as @a[tag=pir.alcohol_eat] run function pirates:items/beverages/tags/tick
execute as @a[tag=pir.t_intoxication] run function pirates:items/beverages/intoxication_tag
#cup
execute as @a[scores={pir.selected_cup.bb=1..}] unless items entity @s weapon.* minecraft:honey_bottle[minecraft:custom_model_data=70005] run scoreboard players set @s pir.selected_cup.bb 0

#harp
execute as @a if score @s pir.harp.bb matches 1.. at @s run function pirates:items/harp/love

#shell
execute as @a[tag=pir.shell_up.bb] at @s run function pirates:items/shell/tp_up

#kill mermaid
execute as @a if score @s pir.kill_mermaid.bb matches 5.. at @s run function pirates:mobs/spawn/ocean/ariel_score

#bossbar davy
execute if score *bossbar.spawn_davy pir.davy_bossbar.bb matches ..220 run function pirates:mobs/make/undead/davy/spawn_bossbar

#poison_sword
execute as @a if score @s pir.poison_sword.bb matches 1.. unless items entity @s weapon.mainhand minecraft:iron_sword[minecraft:custom_model_data=74005] run scoreboard players set @s pir.poison_sword.bb 0

schedule clear pirates:scores