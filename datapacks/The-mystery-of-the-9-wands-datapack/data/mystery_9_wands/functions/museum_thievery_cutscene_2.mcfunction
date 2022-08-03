### Text 2

tellraw @p ["","<",{"text":"Head of the thief's","color":"gold"},">"," Prepare to die!"]

### Movment enable

scoreboard players set @p thievery_cut 0

### "Real" thief's

summon skeleton 6.5 -57 146.7 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:0b,Health:30f,Rotation:[-180F,0F],Tags:["thiefboss"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:30}]}
summon skeleton 4 -57 145 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:0b,Rotation:[-180F,0F],Tags:["thief"],HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b}}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}]}
summon skeleton 8 -57 142 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:0b,Health:25f,Rotation:[-180F,0F],Tags:["thief"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Thief\'s sword","italic":false}'},Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:25}]}
summon skeleton 3.3 -57 139 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:0b,Health:25f,Rotation:[-180F,0F],Tags:["thief"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Thief\'s sword","italic":false}'},Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:25}]}
summon skeleton 10.9 -57 140 {Silent:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:0b,Health:25f,Rotation:[-180F,0F],Tags:["thief"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Thief\'s sword","italic":false}'},Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b}}],ActiveEffects:[{Id:12,Amplifier:1b,Duration:1999999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:25}]}
tp @e[type=skeleton,tag=fakethiefboss] ~ ~-200 ~
tp @e[type=skeleton,tag=fakethief] ~ ~-200 ~
kill @e[type=skeleton,tag=fakethiefboss]
kill @e[type=skeleton,tag=fakethief]