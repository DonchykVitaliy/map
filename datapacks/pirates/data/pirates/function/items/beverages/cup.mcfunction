clear @s[gamemode=!creative] glass_bottle 1
playsound minecraft:ui.toast.out player @s ~ ~ ~ 1.5 1.4
advancement grant @s only pirates:pirates/cup

function pirates:items/beverages/cup_random

scoreboard players set @s pir.eat_honey.bb 0