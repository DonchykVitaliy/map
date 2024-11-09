execute if entity @s[tag=sp.south.rot] run function pirates:blocks/work/candle/particle_south_north
execute if entity @s[tag=sp.north.rot] run function pirates:blocks/work/candle/particle_south_north

execute if entity @s[tag=sp.west.rot] run function pirates:blocks/work/candle/particle_west_east
execute if entity @s[tag=sp.east.rot] run function pirates:blocks/work/candle/particle_west_east

schedule function pirates:blocks/work/candle/sound 28t append