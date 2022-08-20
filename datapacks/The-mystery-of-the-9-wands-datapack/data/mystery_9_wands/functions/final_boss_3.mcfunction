### Text

tellraw @a ["","<",{"text":"Doomshire Clan Leader","color":"gold"},"> ","Now I shall slay you using the last 2 wands! PERPARE TO POOF!"]

### Make "Real" boss

summon illusioner -175 -60 174 {CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/final_boss",Health:375f,CanJoinRaid:0b,Tags:["final_boss"],CustomName:'{"text":"Doomshire clan leader","color": "dark_red"}',Attributes:[{Name:"generic.max_health",Base:380},{Name:"generic.armor",Base:6}]}

### Enable movment

scoreboard players set @a final_boss_movment 0

### Kill NoAI boss

tp @e[type=illusioner,tag=final_boss_cut] ~ ~100 ~
kill @e[type=illusioner,tag=final_boss_cut]
