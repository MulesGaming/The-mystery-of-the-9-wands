### eNABLE MOVMENT

scoreboard players set @a skele_cut 0

### Kill old skele

tp @e[type=skeleton,tag=cut_skeleton_boss] ~ ~-300 ~
kill @e[type=skeleton,tag=cut_skeleton_boss]

### Summon new skele

summon skeleton -18.7 -52 71.2 {CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/skeleton_boss_loot",Health:170f,Tags:["skele_boss"],CustomName:'{"text":"Thief Leader","color":"gold","italic":false}',HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:"generic.max_health",Base:170}]}

