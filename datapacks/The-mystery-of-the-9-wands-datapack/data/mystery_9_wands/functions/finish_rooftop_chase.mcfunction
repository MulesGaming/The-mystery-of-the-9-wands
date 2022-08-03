### Message

tellraw @a ["","<",{"text":"Ninja Thief","color":"gold"},"> ","Impossible! You can't have caught me! NOOOOOO"]

### Give wand and purse

execute at @e[type=zombie,tag=ninjathief] run summon item ~ ~ ~ {Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Purse","italic":false}'},CustomModelData:987785}}}
execute at @e[type=zombie,tag=ninjathief] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Undead wand","color":"light_purple","italic":false}',Lore:['{"text":"Right click to summon a group of undead mobs.","color":"dark_purple","italic":false}']},CustomModelData:798893,undeadwand:1b}}}

### Remove slowdown

effect clear @a slowness

### Tp player back

tp @a 11.3 -59.5 94.9
