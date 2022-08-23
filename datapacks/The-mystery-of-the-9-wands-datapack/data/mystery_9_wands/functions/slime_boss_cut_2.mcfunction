### Kill old slime

tp @e[type=slime,tag=slime_boss_cut] ~ ~-200 ~
kill @e[type=slime,tag=slime_boss_cut]

### Checkpoint

spawnpoint @a 129 -58 139
tellraw @a {"text": "Checkpoint!","color": "green"}

### Movment enable

scoreboard players set @a slime_boss_movment 0

### Summon Slime King

summon slime 135.2 -59 144 {Invulnerable:0b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/continue_slime",Health:100f,Size:5,Tags:["slime_king"],CustomName:'{"text":"Slime King","color":"gold"}',Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.attack_damage",Base:12}]}




