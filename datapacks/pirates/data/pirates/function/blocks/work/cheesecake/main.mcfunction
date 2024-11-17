
#full
execute if data entity @s {interaction:{}} if entity @s[tag=!pir.3parts] run function pirates:blocks/work/cheesecake/3parts

#3parts
execute if data entity @s {interaction:{}} if entity @s[tag=pir.3parts,tag=!pir.2parts] run function pirates:blocks/work/cheesecake/2parts

#2parts
execute if data entity @s {interaction:{}} if entity @s[tag=pir.2parts,tag=!pir.1parts] run function pirates:blocks/work/cheesecake/1parts

#1parts
execute if data entity @s {interaction:{}} if entity @s[tag=pir.1parts] run function pirates:blocks/work/cheesecake/destroy


