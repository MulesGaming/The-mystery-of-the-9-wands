### No movment

scoreboard players set @a skele_cut 1

### Summon skeleton

summon skeleton -18.7 -52 71.2 {Silent:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/thief_boss",NoAI:1b,Tags:["cut_skeleton_boss"],CustomName:'{"text":"Thief Leader","color":"gold","italic":false}',HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}

### Text

tellraw @a ["","<",{"text":"Thief Leader","color":"gold"},"> ","You can not stop the ",{"text":"Doomshire Clan. ","bold":true,"color":"dark_red"},"Once we have the wands from you nothing will be able to stop us!"]

### Make stair

setblock -34 -62 131 purpur_stairs{facing:0}

### Next part

schedule function mystery_9_wands:thief_skele_boss_2 5s

### Checkpoint

tellraw @a {"text":"Checkpoint!","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function mystery_9_wands:continue_after_skele"}}
spawnpoint @a -19 -52 80

### Close 

setblock -18 -51 82 barrier
setblock -19 -51 82 barrier
setblock -20 -51 83 barrier


### Checkpoint

tellraw @a {"text":"Checkpoint!","bold":true,"underlined":true,"color":"green"}
spawnpoint @a -54 -56 81
