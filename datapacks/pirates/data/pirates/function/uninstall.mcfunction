###scoreboard
#carrot on a stick
scoreboard objectives remove pir.use_stick.bb
#turtle soup
scoreboard objectives remove pir.eat_soup.bb
scoreboard objectives remove pir.selected_soup.bb
#honey (beer,rum,berry,coconut,pumpkin,cup)
scoreboard objectives remove pir.eat_honey.bb
scoreboard objectives remove pir.selected_beer.bb
scoreboard objectives remove pir.selected_rum.bb
scoreboard objectives remove pir.selected_berry.bb
scoreboard objectives remove pir.selected_coconut.bb
scoreboard objectives remove pir.selected_pumpkin.bb
scoreboard objectives remove pir.selected_cup.bb
#brewing barrel
scoreboard objectives remove pir.chek_gui_barrel.bb
scoreboard objectives remove pir.working_brewing.bb
#rifle
scoreboard objectives remove pir.rifle_reload.bb
scoreboard objectives remove pir.rifle.bb
scoreboard objectives remove pir.shoot_rifle.bb
#pistol
scoreboard objectives remove pir.pistol_reload.bb
scoreboard objectives remove pir.pistol.bb
scoreboard objectives remove pir.shoot_pistol.bb
#cannon
scoreboard objectives remove pir.cannon.bb
scoreboard objectives remove pir.cannon_shoot.bb
scoreboard objectives remove pir.cannon_destroy.bb
scoreboard objectives remove pir.cannon_tnt.bb
#bomb
scoreboard objectives remove pir.bomb_fire.bb
scoreboard objectives remove pir.bombX1.bb
scoreboard objectives remove pir.bombX2.bb
scoreboard objectives remove pir.bombY1.bb
scoreboard objectives remove pir.bombY2.bb
scoreboard objectives remove pir.bombZ1.bb
scoreboard objectives remove pir.bombZ2.bb
#horn
scoreboard objectives remove pir.gold_horn.bb
#updates
scoreboard objectives remove pir.updates_effects.bb
#structures
scoreboard objectives remove pir.str_island.bb
#shell
scoreboard objectives remove pir.shell.bb
#quests
scoreboard objectives remove pir.quest_ore
scoreboard objectives remove pir.quest_ored
scoreboard objectives remove pir.quest_pirate
scoreboard objectives remove pir.quest_cannon

#text
tellraw @a ["\n",{"translate":"DataPack.PirateAdventures.uninstall","color":"gray"},{"text":"\u2714","bold":true,"color":"green"},"\n",{"translate":"ResourcePack_is_not_installed","color":"red"}]
