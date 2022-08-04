### Replace buttons

setblock -12 -59 114 stone_button[facing=north] replace
setblock 3 -58 116 stone_button[facing=west] replace
setblock -9 -57 120 stone_button[facing=east] replace
setblock 1 -57 123 stone_button[facing=west,face=floor] replace

### Replace item frames.
summon item_frame -12 -59 114 {Facing:2b,Invulnerable:1b,Invisible:1b,Tags:["statureparts1"],Item:{id:"minecraft:gold_block",Count:1b,tag:{display:{Name:'{"text":"Lost statue bit","italic":false}'}}}}
summon item_frame 3 -58 116 {Facing:4b,Invulnerable:1b,Invisible:1b,Tags:["statureparts2"],Item:{id:"minecraft:gold_block",Count:1b,tag:{display:{Name:'{"text":"Lost statue bit","italic":false}'}}}}
summon item_frame -9 -57 120 {Facing:5b,Invulnerable:1b,Invisible:1b,Tags:["statureparts3"],Item:{id:"minecraft:gold_block",Count:1b,tag:{display:{Name:'{"text":"Lost statue bit","italic":false}'}}}}
summon item_frame 1 -57 123 {Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["statureparts4"],Item:{id:"minecraft:gold_block",Count:1b,tag:{display:{Name:'{"text":"Lost statue bit","italic":false}'}}}}

### Reset players

scoreboard players set count statuepartgotten 0
clear @a gold_block{display:{Name:'{"text":"Lost statue bit","italic":false}'}}

