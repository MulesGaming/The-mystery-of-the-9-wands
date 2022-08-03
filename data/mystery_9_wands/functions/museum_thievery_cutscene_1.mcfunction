### Movment

scoreboard players set @p thievery_cut 1

### summon thieves

summon skeleton 6.5 -57 146.7 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:1b,Health:30f,Rotation:[-180F,0F],Tags:["fakethiefboss"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:30}]}
summon skeleton 4 -57 145 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:1b,Rotation:[-180F,0F],Tags:["fakethief"],HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}]}
summon skeleton 8 -57 142 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:1b,Health:25f,Rotation:[-180F,0F],Tags:["fakethief"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Thief\'s sword","italic":false}'},Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:25}]}
summon skeleton 3.3 -57 139 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:1b,Health:25f,Rotation:[-180F,0F],Tags:["fakethief"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Thief\'s sword","italic":false}'},Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:25}]}
summon skeleton 10.9 -57 140 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:1b,Health:25f,Rotation:[-180F,0F],Tags:["fakethief"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Thief\'s sword","italic":false}'},Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:25}]}

### Text 1

tellraw @p ["","<",{"text":"Head of the thief's","color":"gold"},">"," Ah... ",{"selector":"@p"}," We were told you were coming."," You can not stop us from exscaping into the caves..."]

schedule function mystery_9_wands:museum_thievery_cutscene_2 5.5s

### Close doors

### Checkpoint

tellraw @a {"text":"Checkpoint!","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function mystery_9_wands:continue_after_skele"}}
spawnpoint @a 8 -57 132
