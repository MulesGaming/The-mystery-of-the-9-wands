### Disable movement

scoreboard players set @a guardian_cut 1

### Text

tellraw @a ["","<",{"text":"Mutant Guardian","color":"gold"},"> ","DIE DIE DIE DIE DIE ",{"selector":"@p","color":"gold"}," DIE DIE DIE!"]

### Summmon gardion boss

summon elder_guardian -196.8 -61 84.81 {CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/guardian_boss",Health:275f,Tags:["guardian_boss"],CustomName:'{"text":"Mutant Guardian","color":"dark_blue","italic":false}',Attributes:[{Name:"generic.max_health",Base:275},{Name:"generic.attack_damage",Base:9},{Name:"generic.armor",Base:1}]}
