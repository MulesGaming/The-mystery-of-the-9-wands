### Summon Slimes

execute at @e[type=marker,tag=slime_spwaner_large] run summon slime ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"blank_loottable",Health:18f,Size:3,Tags:["sewer_slime_large"],CustomName:'{"text":"Sewer Slime","color":"gold"}',Attributes:[{Name:"generic.max_health",Base:18},{Name:"generic.attack_damage",Base:4}]}
execute at @e[type=marker,tag=slime_spwaner_small] run summon slime ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"blank_loottable",Health:6f,Size:0,Tags:["sewer_slime_large"],CustomName:'{"text":"Sewer Slime","color":"gold"}',Attributes:[{Name:"generic.max_health",Base:7},{Name:"generic.attack_damage",Base:2}]}


### Do agian

schedule function mystery_9_wands:sewer_slimes 13s

