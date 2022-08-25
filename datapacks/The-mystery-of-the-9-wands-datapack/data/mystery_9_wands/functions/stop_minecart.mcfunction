### Destroy Minecart and tp player

kill @e[type=minecart]
tp @a -39.5 -60 127
function mystery_9_wands:cave_cut

### Replace minecart(at start)

summon minecart -19.46 -60 77.416 {Invulnerable:1b,Tags:["to_cave"]}

### Blockoff tunnel cave

setblock -37 -59 119 barrier
setblock -37 -58 119 barrier
setblock -37 -57 119 barrier

### Blockoff tunnel station

setblock -21 -59 80 barrier
setblock -21 -58 80 barrier
setblock -21 -57 80 barrier
setblock -19 -59 80 barrier
setblock -20 -58 80 barrier
setblock -20 -57 80 barrier
setblock -20 -59 80 barrier
setblock -19 -58 80 barrier
setblock -19 -57 80 barrier

### Bomb

summon item_frame -23 -60 144 {Silent:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["bomb"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:97654}}}

