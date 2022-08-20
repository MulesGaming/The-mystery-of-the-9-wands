### Stop repetes

kill @e[type=marker,tag=final_boss]

### Movement disable

scoreboard players set @a final_boss_movment 1

### Lightning

summon lightning_bolt -175 -60 174
fill -170 -60 70 -180 -60 175 air replace fire

### Summon boss

summon illusioner -175 -60 174 {Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/final_boss",NoAI:1b,Health:375f,CanJoinRaid:0b,Tags:["final_boss_cut"],CustomName:'{"text":"Doomshire clan leader","color": "dark_red"}',Attributes:[{Name:"generic.max_health",Base:380},{Name:"generic.armor",Base:6}]}

### First text

tellraw @a ["","<",{"text":"Doomshire Clan Leader","color":"gold"},"> ",{"selector":"@p","color":"gold"}," how? Impossible! "]
schedule function mystery_9_wands:final_boss_2 5s



