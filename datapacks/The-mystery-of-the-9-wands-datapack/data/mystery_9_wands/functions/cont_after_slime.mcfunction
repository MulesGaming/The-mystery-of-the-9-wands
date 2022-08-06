### Remove froglight marker

clear @a pearlescent_froglight{continue_after_slime:1b}

### Remove left over slime

tp @e[type=slime,name="Slime King"] ~ ~-200 ~
kill @e[type=slime,name="Slime King"]

### Remove back wall

setblock 139 -57 143 air
setblock 139 -57 144 air
setblock 138 -58 143 air
setblock 138 -58 144 air
setblock 137 -59 143 air
setblock 137 -59 144 air

summon falling_block 139 -57 143 {Tags:["cont_slime"],BlockState:{Name:"minecraft:mossy_stone_bricks"}}
summon falling_block 139 -57 144 {Tags:["cont_slime"],BlockState:{Name:"minecraft:stone_bricks"}}
summon falling_block 138 -58 143 {Tags:["cont_slime"],BlockState:{Name:"minecraft:mossy_stone_bricks"}}
summon falling_block 138 -58 144 {Tags:["cont_slime"],BlockState:{Name:"minecraft:mossy_stone_bricks"}}
summon falling_block 137 -59 143 {Tags:["cont_slime"],BlockState:{Name:"minecraft:stone_bricks"}}
summon falling_block 137 -59 144 {Tags:["cont_slime"],BlockState:{Name:"minecraft:stone_bricks"}}

### Do cleanup
schedule function mystery_9_wands:cont_after_slime_clearup 1s

### Location Compass

item replace entity @p weapon.offhand with compass{display:{Name:'{"text":"Destination Compass","color":"white","italic":false}',Lore:['{"text":"This compass points towards your next destination","color":"yellow","italic":false}']},HideFlags:5,Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:10,Y:-62,Z:95}}

### Complete

scoreboard players add do_final if_final 1
