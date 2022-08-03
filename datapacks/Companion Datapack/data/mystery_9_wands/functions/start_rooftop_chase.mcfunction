### Summon thief

summon zombie 15 -48 72 {Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["ninjathief"],CustomName:'{"text":"Ninja Thief","color":"gold"}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:3758339}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1999999999,ShowParticles:0b}]}

### Text

tellraw @a ["","<",{"text":"Ninja thief","color":"gold"},"> ","Once I deliver the wand from this purse and the on I have on me to the Doomshire clan we will have all the wands besides the ones you have! You'll never catch me."]

### Remove old marker

tp @e[type=marker,tag=rooftop_start] ~ ~-100 ~
kill @e[type=marker,tag=rooftop_start]

### TP player 

tp @a 15.6 -48.5 69.5

### Slow down player

effect give @a slowness 999999 2 true