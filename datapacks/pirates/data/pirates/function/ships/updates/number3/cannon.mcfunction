execute if entity @s[tag=!pir.rotation_done] run function pirates:ships/updates/number3/rotation
execute if entity @s[tag=pir.rotation_done] align xyz positioned ~0.5 ~ ~0.5 run function pirates:ships/updates/number3/place
tag @s add pir.update_done
