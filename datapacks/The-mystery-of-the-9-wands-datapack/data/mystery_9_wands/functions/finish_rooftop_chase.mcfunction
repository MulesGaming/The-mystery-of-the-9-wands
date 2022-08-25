### Message

tellraw @a ["","<",{"text":"Ninja Thief","color":"gold"},"> ","Impossible! You can't have caught me! NOOOOOO"]

### Give wand and purse

give @a carrot_on_a_stick{display:{Name:'{"text":"Undead wand","color":"light_purple","italic":false}',Lore:['{"text":"Right click to summon a group of undead mobs.","color":"dark_purple","italic":false}']},CustomModelData:798893,undeadwand:1b} 1
give @a paper{display:{Name:'{"text":"Purse","italic":false}'},CustomModelData:987785} 1

### Remove slowdown

effect clear @a slowness

### Tp player back

tp @a 11.3 -59.5 94.9

### Remove ninja thief

tp @e[type=zombie,tag=ninjathief] ~ ~-100 ~
kill @e[type=zombie,tag=ninjathief]

### Complete

scoreboard players add do_final if_final 1