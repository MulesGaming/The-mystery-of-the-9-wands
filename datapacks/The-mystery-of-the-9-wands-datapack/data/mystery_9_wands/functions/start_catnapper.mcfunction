### Remove start marker

kill @e[type=marker,tag=catnapper]

### Remove movment

scoreboard players set @a catnapper_movment 1

### Summon catnapper's

summon vindicator -176 -60 149 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/catnapper",LeftHanded:1b,NoAI:1b,CanPickUpLoot:0b,Health:65f,PatrolLeader:0b,CanJoinRaid:0b,Tags:["catnapper_cut"],CustomName:'{"text":"Catnapper","color":"gray"}',Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.armor",Base:3}]}
summon vindicator -174.7 -60 147.4 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/catnapper",LeftHanded:1b,NoAI:1b,CanPickUpLoot:0b,Health:65f,PatrolLeader:0b,CanJoinRaid:0b,Tags:["catnapper_cut"],CustomName:'{"text":"Catnapper","color":"gray"}',Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.armor",Base:3}]}
summon vindicator -178 -60 147.4 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/catnapper",LeftHanded:1b,NoAI:1b,CanPickUpLoot:0b,Health:65f,PatrolLeader:0b,CanJoinRaid:0b,Tags:["catnapper_cut"],CustomName:'{"text":"Catnapper","color":"gray"}',Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.armor",Base:3}]}

### Message

tellraw @a ["","<",{"text":"Catnapper","color":"gold"},"> ",{"selector":"@p","color":"gold"}," you will never get passed us to the leader of the Doomshire clan! NEVER!"]

### Next

schedule function mystery_9_wands:end_catnapper 7s

### Checkpoint

tellraw @a {"text":"Checkpoint!","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function mystery_9_wands:continue_after_skele"}}
spawnpoint @a -176 -60 141