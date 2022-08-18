### Message

tellraw @a {"text":"Correct!","color":"green"}

### Remove answer

clear @a paper{puzzle:1b}

### Open final door

setblock -176 -59 158 air
setblock -176 -60 158 air
setblock -176 -58 158 air

setblock -177 -59 158 air
setblock -177 -60 158 air
setblock -177 -58 158 air

setblock -175 -59 158 air
setblock -175 -60 158 air
setblock -175 -58 158 air

### Door effect

playsound minecraft:entity.generic.explode ambient @a
particle minecraft:explosion -175.45 -60.3 157 2 1 0 1 10 normal

