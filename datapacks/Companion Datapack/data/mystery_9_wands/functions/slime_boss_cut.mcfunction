### Set barrirs

fill 120 -58 147 120 -58 140 barrier replace air

### Movment

scoreboard players set @a slime_boss_movment 1

### Summon No-AI Slime Boss

summon slime 135.2 -59 144 {Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Size:5,Tags:["slime_boss_cut"],CustomName:'{"text":"Slime King","color":"gold"}'}

### Text

tellraw @a ["","<",{"text":"Slime King","color":"gold"},"> ",{"selector":"@p","color":"gold"}," hand over the wands!"]
tellraw @a  ["","<",{"text":"Slime King","color":"gold"},"> ","No? Then you shall poof!"]

### PArt 2

schedule function mystery_9_wands:slime_boss_cut_2 5.5s

### Get rid of Slime wand

tp @e[type=item_frame,tag=slime_wand_holder] ~ ~-100 ~
kill @e[type=item_frame,tag=slime_wand_holder]

### Barrior behind

fill 120 -58 148 120 -58 139 barrier replace air
fill 120 -57 149 120 -57 138 barrier replace air
fill 120 -56 149 120 -56 138 barrier replace air

