### Base team setup

team add BaseTeam
team modify BaseTeam color gold
team modify BaseTeam friendlyFire false

### Cutscence movment disabling scoreboreds creation

scoreboard objectives add cutscence_movment dummy
scoreboard objectives add thievery_cut dummy
scoreboard objectives add cave_cut dummy
scoreboard objectives add skele_cut dummy
scoreboard objectives add slime_boss_movment dummy
scoreboard objectives add guardian_cut dummy

### Triggers

scoreboard objectives add kill_self trigger
scoreboard objectives add go_to_home trigger

### Statue part count

scoreboard objectives add statuepartgotten dummy

### Death message 

scoreboard objectives add death deathCount

### NPC's

scoreboard objectives add museumemployee dummy

### Wands

scoreboard objectives add fang_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add orb_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add slime_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add slime_wand_timer dummy
scoreboard objectives add speed_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add undead_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add undead_wand_timer dummy
schedule function mystery_9_wands:undead_timer_downone 1s
schedule function mystery_9_wands:slime_timer_downone 1s
scoreboard objectives add water_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add flame_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add void_wand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add cat_wand minecraft.used:minecraft.carrot_on_a_stick

### MCTransport

scoreboard objectives add mctransport dummy

### Bomb

scoreboard objectives add bomb_menu dummy
scoreboard objectives add bomb_code dummy
function mystery_9_wands:bomb/menu/page0/items

### Miner

scoreboard objectives add miner_npc dummy

### Thief boss

scoreboard objectives add skele_boss dummy
bossbar add skeleboss {"text": "Thief Leader", "color": "gold"}

### Armor stand for boss distance

summon area_effect_cloud ~ ~ ~ {Particle:"block air",Radius:1f,Duration:199999980,Age:1999980,Color:16777215,Tags:["skele_continue"]}

### Continue

scoreboard objectives add skele_next dummy

### Summon miner

summon zombie -26 -60 143 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["miner"],CustomName:'{"text":"Miner","color":"gold","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:2743753}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}

### Mail

scoreboard objectives add mail dummy

### Sewer

scoreboard objectives add sewer dummy
scoreboard objectives add sewer_npc dummy

### Sewer manhole marker

summon marker 6 -63 110 {Tags:["sewer_manhole"]}
summon marker 165 -49 144 {Tags:["sewer_manhole_exit"]}

### Miner command(Just to save)
# summon zombie -26 -60 143 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["miner"],CustomName:'{"text":"Miner","color":"gold","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:2743753}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000000000000000000,ShowParticles:0b}]}

### Sewer worker
# summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Health:1f,Rotation:[-180F,0F],Tags:["sewer_npc"],CustomName:'{"text":"Sewer Worker","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{Unbreakable:1b,CustomModelData:2363427}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1}]}

### Slime wand

summon item_frame 131.5 -59 143.4 {Invisible:1b,Fixed:1b,Tags:["slime_wand_holder"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:210465}}}

### Slime King bossbar

bossbar add slime_king {"text": "Slime King","color": "gold"}
scoreboard objectives add slime_cont dummy

### Add rooftop chase marker

summon marker 15 -48 72 {Tags:["rooftop_start"]}
summon marker -7 -48 62 {Tags:["rooftop_fail"]}

### Thief victom
tp @e[type=villager,tag=thiefvictom,distance=..2] ~ ~-100 ~
kill @e[type=villager,tag=thiefvictom]
summon villager 7.5 -59.5 91.3 {Invulnerable:1b,Tags:["thiefvictom"],Team:"BaseTeam",NoAI:1b,VillagerData:{level:2,profession:"minecraft:shepherd"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,xp:0,buy:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Purse","italic":false}'},CustomModelData:987785}},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Speed Wand","color":"light_purple","italic":false}',Lore:['{"text":"Right click to gain the speed effect.","color":"dark_purple","italic":false}']},Unbreakable:1b,CustomModelData:643978,speedwand:1b}}}]}}
scoreboard objectives add thief_victom dummy

### Welcome message

tellraw @a ["","Welcome to the mystery of the 9 wands!","\n",{"text":"GitHub","bold":true,"underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/MulesGaming/The-mystery-of-the-9-wands"}}]

### Replace artifacs

function mystery_9_wands:replace_lost_staue_bits

### If do Final

scoreboard objectives add if_final dummy
scoreboard objectives add swamp dummy

### Remove lost statue bits extras

kill @e[type=item,nbt={Item:{id:"minecraft:gold_block",Count:1b,tag:{display:{Name:'{"text":"Lost statue bit","italic":false}'}}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:item_frame",Count:1b}}]