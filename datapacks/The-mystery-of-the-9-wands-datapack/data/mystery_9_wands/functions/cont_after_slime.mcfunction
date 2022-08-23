### Remove froglight marker

clear @a cyan_wool{continue_after_slime:1b}

### Remove left over slime

tp @e[type=slime,name="Slime King"] ~ ~-200 ~
kill @e[type=slime,name="Slime King"]

### Do cleanup
schedule function mystery_9_wands:cont_after_slime_clearup 1s

### Remove back wall

setblock 138 -58 143 air replace 
setblock 138 -58 144 air replace
setblock 139 -57 143 air replace
setblock 139 -57 144 air replace

### Location Compass

item replace entity @p weapon.offhand with compass{display:{Name:'{"text":"Destination Compass","color":"white","italic":false}',Lore:['{"text":"This compass points towards your next destination","color":"yellow","italic":false}']},HideFlags:5,Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:15,Y:-50,Z:78}}

### Complete

scoreboard players add do_final if_final 1
