
execute unless entity @a[tag=pir.ride_turtle,distance=..0.6] run function pirates:items/kelp_on_a_stick/dismount

#execute if entity @a[tag=pir.ride_turtle,distance=..0.6,nbt={SelectedItem:{tag:{Tags:["pir.kelp_on_a_stick.bb"]}}},scores={pir.use_stick.bb=1..}] run function pirates:items/kelp_on_a_stick/motion