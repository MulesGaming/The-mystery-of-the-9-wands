### Clear

clear @a cyan_wool{cont_after_guardian:1b}

### Open passage

setblock -196 -63 85 water

### Tellraw

tellraw @a ["","I'll bet there's a passage through the water...","\n",{"text":"Tip:","bold":true,"color":"yellow"}," press the sprint button the swim when underwater."]

### Wand

clear @a carrot_on_a_stick{waterwand:1b}
give @a carrot_on_a_stick{display:{Name:'{"text":"Water Breathing Wand","color":"blue","italic":false}',Lore:['{"text":"Right click to give you aquatic abilities. ","color":"dark_purple"}']},Unbreakable:1b,CustomModelData:967854,waterwand:1b}

