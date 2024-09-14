summon tnt ~ ~ ~ {fuse:0}
kill @e[tag=pir.cannon_tnt.bb,type=item_display,distance=..1,limit=1,sort=nearest]
execute if entity @s[tag=pir.fire_ball] run summon marker ~ ~ ~ {Tags:["pir.fire_cannonballs"]}
kill @s