### Remove wall

setblock -176 -61 151 air
setblock -176 -62 151 air
setblock -177 -61 151 air
setblock -177 -62 151 air

setblock -176 -59 151 air
setblock -176 -60 151 air
setblock -177 -59 151 air
setblock -177 -60 151 air

### Falling block

summon falling_block -176 -59 151 {BlockState:{Name:"minecraft:mud_bricks"},Time:1}
summon falling_block -176 -60 151 {BlockState:{Name:"minecraft:mud_bricks"},Time:1}
summon falling_block -177 -59 151 {BlockState:{Name:"minecraft:mud_bricks"},Time:1}
summon falling_block -177 -60 151 {BlockState:{Name:"minecraft:mud_bricks"},Time:1}

### Clear actavaotr

clear @a cyan_wool{continue_after_catnapper:1b}

### Free cats

setblock -175 -59 13 air
setblock -175 -59 144 air

setblock -174 -59 148 air
setblock -174 -59 148 air

