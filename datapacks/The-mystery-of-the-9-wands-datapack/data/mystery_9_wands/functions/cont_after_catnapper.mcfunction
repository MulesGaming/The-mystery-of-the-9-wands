### Remove wall

setblock -175 -59 151 air
setblock -175 -60 151 air
setblock -176 -59 151 air
setblock -176 -60 151 air
setblock -177 -59 151 air
setblock -177 -60 151 air
setblock -177 -59 151 air
setblock -177 -60 151 air

setblock -176 -61 151 bricks
setblock -177 -61 151 bricks

### Clear actavaotr

clear @a cyan_wool{continue_after_catnapper:1b}

### Free cats

setblock -175 -59 13 air
setblock -175 -59 144 air

setblock -174 -59 148 air
setblock -174 -59 148 air

### Wand

clear @a carrot_on_a_stick{catwand:1b}
give @a carrot_on_a_stick{display:{Name:'{"text":"Cat wand","color":"light_purple","italic":false}',Lore:['{"text":"Right click to summon a cat and fish! ","italic":false}']},Unbreakable:1b,CustomModelData:2373578,catwand:1b}
