### Remove wool marker

clear @a cyan_wool{continue_after_slime:1b}

### Remove left over slime

tp @e[type=slime,name="Slime King"] ~ ~-200 ~
kill @e[type=slime,name="Slime King"]

### Do cleanup
schedule function mystery_9_wands:cont_after_slime_clearup 1s

### Remove back wall

setblock 139 -56 143 air replace 
setblock 139 -56 144 air replace
setblock 139 -57 143 air replace
setblock 139 -57 144 air replace

### Complete

scoreboard players add do_final if_final 1

### Wand

clear @a carrot_on_a_stick{slimewand:1b}
give @a carrot_on_a_stick{display:{Name:'{"text":"Slime Wand","color":"dark_green","italic":false}',Lore:['{"text":"Right click to summon 4 slimes that protect you.","color":"dark_purple","italic":false}']},Unbreakable:1b,CustomModelData:210465,slimewand:1b}

