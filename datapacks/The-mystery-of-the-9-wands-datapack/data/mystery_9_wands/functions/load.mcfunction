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
scoreboard objectives add catnapper_movment dummy
scoreboard objectives add final_boss_movment dummy

### Checkif player enter/exit

summon marker -51 -58 93 {Tags:["exit_office"]}
summon marker -12 -60 90 {Tags:["enter_office"]}

### Triggers

scoreboard objectives add kill_self trigger
scoreboard objectives add go_to_home trigger
scoreboard objectives add cont_after_museum trigger
scoreboard objectives add go_to_mine trigger
scoreboard objectives add go_to_swamp trigger

### Statue part count

scoreboard objectives add statuepartgotten dummy
kill @e[type=item,nbt={Item:{id:"minecraft:item_frame"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}]

### Employ

kill @e[type=villager,tag=museumemployee]
summon villager -4.1 -57 121.3 {Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["museumemployee"],CustomName:'{"text":"Museum Employee","color":"gold"}',VillagerData:{profession:"minecraft:librarian"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:gold_block",Count:4b,tag:{display:{Name:'{"text":"Lost statue bit","italic":false}'}}},sell:{id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:'{"text":"Museum employee key","italic":false}'},CustomModelData:200}}}]}}

### Doors

setblock 9 -56 130 mangrove_door[half=upper]
setblock 8 -56 130 mangrove_door[half=upper]
setblock 9 -57 130 mangrove_door[half=lower]
setblock 8 -57 130 mangrove_door[half=lower]

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

### Miner

scoreboard objectives add miner_npc dummy

### Thief boss

scoreboard objectives add skele_boss dummy
bossbar add skeleboss {"text": "Thief Leader", "color": "gold"}
setblock -18 -51 82 air
setblock -19 -51 82 air
setblock -20 -51 83 air
scoreboard objectives add cont_after_thief_skeley dummy

### Continue

scoreboard objectives add skele_next dummy

### Summon miner

kill @e[type=zombie,tag=miner]
summon zombie -26 -60 143 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,DeathLootTable:"mystery_9_wands:entities/blank_loottable",NoAI:1b,Tags:["miner"],CustomName:'{"text":"Miner","color":"gold","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:2743753}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1999999980,ShowParticles:0b}]}

### Mail

scoreboard objectives add mail dummy

### Sewer

scoreboard objectives add sewer dummy
scoreboard objectives add sewer_npc dummy
fill 139 -57 145 139 -55 142 minecraft:stone_bricks

### Sewer manhole marker

setblock 6 -61 110 iron_trapdoor
summon marker 6 -63 110 {Tags:["sewer_manhole"]}
summon marker 165 -49 144 {Tags:["sewer_manhole_exit"]}

### Miner command(Just to save)
####summon zombie -26 -60 143 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["miner"],CustomName:'{"text":"Miner","color":"gold","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:2743753}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000000000,ShowParticles:0b}]}

#### Sewer worker
kill @e[type=villager,tag=sewer_npc]
summon villager 5.2 -60 110.6 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Health:1f,Rotation:[-180F,0F],Tags:["sewer_npc"],CustomName:'{"text":"Sewer Worker","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{Unbreakable:1b,CustomModelData:2363427}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}

setblock 139 -58 143 stone_bricks
setblock 139 -58 144 stone_bricks

### Slime wand

summon item_frame 131.5 -59 143.4 {Invisible:1b,Fixed:1b,Tags:["slime_wand_holder"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:210465}}}
kill @e[type=marker,tag=slime_boss_cut]
summon marker 124.487 -59.5 143.9 {Tags:["slime_boss_cut"]}

### Slime King bossbar

bossbar add slime_king {"text": "Slime King","color": "gold"}
scoreboard objectives add slime_cont dummy

### Add rooftop chase marker

kill @e[type=marker,tag=rooftop_start]
summon marker 15 -48 72 {Tags:["rooftop_start"]}

### Thief victom

execute at @e[type=villager,tag=thiefvictom] run tp @e[type=villager,tag=thiefvictom,distance=..2] ~ ~-100 ~
summon villager 7.5 -59.5 91.3 {Invulnerable:1b,Tags:["thiefvictom"],Team:"BaseTeam",NoAI:1b,VillagerData:{level:2,profession:"minecraft:shepherd"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,xp:0,buy:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Purse","italic":false}'},CustomModelData:987785}},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Speed Wand","color":"light_purple","italic":false}',Lore:['{"text":"Right click to gain the speed effect.","color":"dark_purple","italic":false}']},Unbreakable:1b,CustomModelData:643978,speedwand:1b}}}]}}
scoreboard objectives add thief_victom dummy

### Remove ninja thief

tp @e[type=zombie,tag=ninjathief] ~ ~-100 ~
kill @e[type=zombie,tag=ninjathief]

### Rooftop chase

scoreboard objectives add rooftop-chase-have-done dummy

### Welcome message

tellraw @a ["","Welcome to the mystery of the 9 wands!","\n",{"text":"Github","bold":true,"underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/MulesGaming/The-mystery-of-the-9-wands"}}," ",{"text":"Website","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://mulesgaming.com/projects/mystery-9-wands/the-mystery-9-wands"}}]

### Replace artifacs

function mystery_9_wands:replace_lost_staue_bits

### If do Final

scoreboard objectives add if_final dummy
scoreboard objectives add swamp dummy


### Cat kidnapped

kill @e[type=marker,tag=cat_kidnapper_start]
summon marker -175.245 -60 143.65 {Tags:["cat_kidnapper_start"]}

kill @e[type=cat,tag=imprisoned_cat]
summon cat -172.3 -59 149.3 {DeathLootTable:"mystery_9_wands:entities/blank_loottable",Tags:["imprisoned_cat"]}
summon cat -172.3 -59 149.3 {DeathLootTable:"mystery_9_wands:entities/blank_loottable",Tags:["imprisoned_cat"]}
summon cat -173.73 -59 144 {DeathLootTable:"mystery_9_wands:entities/blank_loottable",Tags:["imprisoned_cat"]}
summon cat -173.73 -59 144 {DeathLootTable:"mystery_9_wands:entities/blank_loottable",Tags:["imprisoned_cat"]}

### Guardian bossbar

function mystery_9_wands:guardian_bossbar
bossbar add guardian_boss "Munitnt Guardian"

### Fill in hole

setblock -196 -63 85 barrier

### Cont after Guardian

scoreboard objectives add cont_after_guardian dummy

### Close gaurdion boss 

setblock -196 -63 85 barrier

### Catnapper 

kill @e[type=marker,tag=catnapper]
summon marker -176.38 -60 144.3 {Tags:["catnapper"]}
kill @e[type=vindicator,tag=catnapper_cut]
kill @e[type=vindicator,tag=catnapper]

### Resourse pack enabled

kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{CustomModelData:874336}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:item_frame"}}]
summon item_frame 74 -58 -18 {Facing:2b,Invulnerable:1b,Invisible:1b,Tags:["resoursepacktest"],Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:874336}}}
summon item_frame 74 -58 -35 {Facing:3b,Invulnerable:1b,Invisible:1b,Tags:["resoursepacktest"],Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:874336}}}
setblock 74 -57 -18 minecraft:oak_wall_sign[facing=north,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"bold":true,"color":"dark_green","text":"Is there a "}',Text2:'{"bold":true,"color":"dark_green","text":"checkmark?"}',Text3:'{"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/tellraw @p [\\"\\",{\\"text\\":\\"Recourse pack download instructions(if its not automatically installed):\\",\\"bold\\":true,\\"color\\":\\"dark_blue\\"},\\"\\\\n\\",\\"\\\\n\\",{\\"text\\":\\"Click here\\",\\"underlined\\":true,\\"color\\":\\"dark_gray\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://github.com/MulesGaming/The-mystery-of-the-9-wands/releases/\\"}},{\\"text\\":\\" or go to \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"github.com/MulesGaming/The-mystery-of-the-9-wands/releases/\\",\\"bold\\":true,\\"color\\":\\"dark_gray\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"github.com/MulesGaming/The-mystery-of-the-9-wands/releases/\\"}},{\\"text\\":\\" and click on the latest release. \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Go to \\\\\\"Assets\\\\\\" the download the file named mystery-9-wands-rp.zip and open in folder. \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Now pause Minecraft, go to options, Recourse packs, Open Pack Folder. Now drag Mystery-9-wands-rp.zip in the Recourse pack folder. In Minecraft it should now appear under Available and if you hover over it and click the play button it will enable!\\",\\"color\\":\\"dark_gray\\"}]"},"text":"If not click me!"}',Text4:'{"text":""}'}
setblock 74 -57 -35 minecraft:oak_wall_sign[facing=south,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"bold":true,"color":"dark_green","text":"Is there a "}',Text2:'{"bold":true,"color":"dark_green","text":"checkmark?"}',Text3:'{"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/tellraw @p [\\"\\",{\\"text\\":\\"Recourse pack download instructions(if its not automatically installed):\\",\\"bold\\":true,\\"color\\":\\"dark_blue\\"},\\"\\\\n\\",\\"\\\\n\\",{\\"text\\":\\"Click here\\",\\"underlined\\":true,\\"color\\":\\"dark_gray\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://github.com/MulesGaming/The-mystery-of-the-9-wands/releases/\\"}},{\\"text\\":\\" or go to \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"github.com/MulesGaming/The-mystery-of-the-9-wands/releases/\\",\\"bold\\":true,\\"color\\":\\"dark_gray\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"github.com/MulesGaming/The-mystery-of-the-9-wands/releases/\\"}},{\\"text\\":\\" and click on the latest release. \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Go to \\\\\\"Assets\\\\\\" the download the file named mystery-9-wands-rp.zip and open in folder. \\",\\"color\\":\\"dark_gray\\"},{\\"text\\":\\"Now pause Minecraft, go to options, Recourse packs, Open Pack Folder. Now drag Mystery-9-wands-rp.zip in the Recourse pack folder. In Minecraft it should now appear under Available and if you hover over it and click the play button it will enable!\\",\\"color\\":\\"dark_gray\\"}]"},"text":"If not click me!"}',Text4:'{"text":""}'}
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{CustomModelData:874336}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:item_frame"}}]

### Catnapper continue

scoreboard objectives add cont_after_catnappers dummy

### UnFree cats

setblock -175 -59 13 iron_bars
setblock -175 -59 144 iron_bars

setblock -174 -59 148 iron_bars
setblock -174 -59 148 iron_bars

### Fix carnapper wall 

setblock -177 -61 151 air
setblock -177 -62 151 air
setblock -176 -61 151 air
setblock -176 -62 151 air

setblock -177 -60 151 mud_bricks
setblock -177 -59 151 mud_bricks
setblock -176 -60 151 mud_bricks
setblock -176 -59 151 mud_bricks

setblock -175 -59 151 mud_bricks
setblock -175 -60 151 mud_bricks

### Final boss

kill @e[type=marker,tag=final_boss]
summon marker -175 -60 164 {Tags:["final_boss"]}
bossbar add final_boss_bossbar {"text": "Doomshire Clan Leader","color": "dark_red"}
schedule function mystery_9_wands:final_boss_wand_wither 10s
schedule function mystery_9_wands:final_boss_wand_fire 5s
scoreboard objectives add cont_after_finalboss dummy

### Remove lost statue bits extras

schedule function mystery_9_wands:clear-items 11s

### Game mode

gamemode adventure @a

### Levels

xp set @a 99999 levels

### First login

scoreboard objectives add first-login dummy
scoreboard players set @a first-login 1

### Thiefery cut

scoreboard objectives add start-thief-cut dummy
execute unless score load start-thief-cut matches ..0 run scoreboard players set do start-thief-cut 1

### Mine stop do-agian

scoreboard objectives add mine-do dummy
