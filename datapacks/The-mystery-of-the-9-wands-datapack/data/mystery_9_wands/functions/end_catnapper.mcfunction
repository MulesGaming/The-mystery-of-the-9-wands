### Enable movment

scoreboard players set @a catnapper_movment 0

### Get rid of old catnappers

tp @e[type=vindicator,tag=catnapper_cut] ~ ~-100 ~
kill @e[type=vindicator,tag=catnapper_cut]

### Summon new

summon vindicator -176 -60 149 {Silent:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/catnapper",LeftHanded:1b,CanPickUpLoot:0b,Health:65f,PatrolLeader:0b,CanJoinRaid:0b,Tags:["catnapper"],CustomName:'{"text":"Catnapper","color":"gray"}',Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.armor",Base:3}]}
summon vindicator -174.7 -60 147.4 {Silent:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",LeftHanded:1b,CanPickUpLoot:0b,Health:65f,PatrolLeader:0b,CanJoinRaid:0b,Tags:["catnapper"],CustomName:'{"text":"Catnapper","color":"gray"}',Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.armor",Base:3}]}
summon vindicator -178 -60 147.4 {Silent:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",LeftHanded:1b,CanPickUpLoot:0b,Health:65f,PatrolLeader:0b,CanJoinRaid:0b,Tags:["catnapper"],CustomName:'{"text":"Catnapper","color":"gray"}',Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.armor",Base:3}]}

