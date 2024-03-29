### Move mobs when on purpur stairs(East, north, west, south)

execute as @e[type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=east] run tp @s ~.125 ~ ~ 270 0
execute as @e[type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=north] run tp @s ~ ~ ~-.125 180 0
execute as @e[type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=west] run tp @s ~-.125 ~ ~ 90 0
execute as @e[type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=south] run tp @s ~ ~ ~.125 0 0

### Move mobs when on purpur stairs with slabs(East, north, west, south)

execute as @e[type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=east] run tp @s ~.125 ~ ~ 270 0
execute as @e[type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=north] run tp @s ~ ~ ~-.125 180 0
execute as @e[type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=west] run tp @s ~-.125 ~ ~ 90 0
execute as @e[type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=south] run tp @s ~ ~ ~.125 0 0
### Rotate mobs when on end stone stairs

function mystery_9_wands:rotate_mobs

### Add player(s) to base team

team join BaseTeam @a

### Cutscence movement

function mystery_9_wands:movment_true_false

### Kill trigger

scoreboard players enable @a kill_self
execute as @a[scores={kill_self=1..}] run tellraw @p ["",{"text":"Are you sure you want to kill yourself? You will go back to you last checkpoint.","bold":true,"color":"dark_red"},"\n",{"text":"CONFIRM","bold":true,"underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/kill @p"}}]
execute as @a[scores={kill_self=1..}] run scoreboard players set @s kill_self 0

### Home trigger

scoreboard players enable @a go_to_home
execute as @a[scores={go_to_home=1..}] run tp @p 74 -58 -25
execute as @a[scores={go_to_home=1..}] run scoreboard players set @s go_to_home 0

### Checkif player enter/exit

execute positioned -51 -58 93 run teleport @a[distance=..1] -3 -57 83
execute positioned -12 -60 90 run teleport @a[distance=..1] -52 -57 92

### If dead

function mystery_9_wands:ifdied

### Museum Employee NPC

function mystery_9_wands:npc/museum_employee

### Fang wand right click

execute if entity @p[scores={fang_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{fangwand:1b,CustomModelData:2223}}}] run function mystery_9_wands:fangs

### Fang wand reset

scoreboard players remove @a[scores={fang_wand=1..}] fang_wand 1

### Thiefery cutscence

### Sataration

effect give @a saturation 19980 99 true

### MCtransport employee

execute at @e[type=villager,tag=mctransportemployee] as @a[distance=..4,tag=!mctransport_player] run scoreboard players set @a[distance=..4,tag=!mctransport_player] mctransport 1
tag @a[tag=mctransport_player] remove mctransport_player
execute at @e[type=villager,tag=mctransportemployee] run tag @a[distance=..4] add mctransport_player
function mystery_9_wands:npc/mctransport

### MCtransport travel to mine's start minecart

execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run setblock -20 -60 75 minecraft:redstone_block
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] run setblock -20 -59 80 minecraft:air

### Bomb 

execute as @a run function mystery_9_wands:bomb/menu/check
function mystery_9_wands:bomb/code/is_correct_code

### Miner NPC

execute at @e[type=zombie,tag=miner] as @a[distance=..3,tag=!miner_player] run scoreboard players set @a[distance=..3,tag=!miner_player] miner_npc 1
tag @a[tag=miner_player] remove miner_player
execute at @e[type=zombie,tag=miner] run tag @a[distance=..3] add miner_player
function mystery_9_wands:npc/miner
execute if score time bomb_timer matches 999999999 run scoreboard players set time bomb_timer 999999999

### Tp out of hole

execute as @a at @s if block ~ ~-1 ~ black_carpet run tp @a -18.5 -18 107

### Start boss fight

execute as @a at @s if block ~ ~-1 ~ petrified_oak_slab run function mystery_9_wands:thief_skele_boss

### Bossbar Thief leader

function mystery_9_wands:thief_skele_bossbar

### Continue story

execute at @e[type=area_effect_cloud,tag=skele_continue] as @a[distance=..1,tag=!skele_continue_player] run scoreboard players set @a[distance=..1,tag=!skele_continue_player] skele_next 1
tag @a[tag=skele_continue_player] remove skele_continue
execute at @e[type=minecraft:area_effect_cloud,tag=skele_continue] run tag @a[distance=..1] add skele_continue_player
execute at @e[type=area_effect_cloud,tag=skele_continue] run tellraw @a[scores={skele_next=1}] ["",{"text":"Continue story?","hoverEvent":{"action":"show_text","contents":[{"text":"Make sure to get the Orb wand.","italic":true}]}},"\n",{"text":"Continue?","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function mystery_9_wands:continue_after_skele"}}]
execute as @a if score @p skele_next matches 1 run scoreboard players set @p skele_next 0

### Sewer text

execute if score open sewer matches 0 run function mystery_9_wands:npc/sewer_npc_before
execute if score open sewer matches 1.. run function mystery_9_wands:npc/sewer_npc_after

### Orb wand right click

execute if entity @p[scores={orb_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{orb_wand:1b,CustomModelData:92869}}}] run execute as @p run function mystery_9_wands:boosting_effects

### Orb wand reset

scoreboard players remove @a[scores={orb_wand=1..}] orb_wand 1

### Tp with sewer

execute at @e[type=marker,tag=sewer_manhole] run tp @a[distance=..2] 48.05 -48.7 96.08
execute at @e[type=marker,tag=sewer_manhole_exit] run tp @a[distance=..2] -54.010 -57.5 81.9

### Sewer slimes

execute if score open sewer matches 0 run kill @e[type=slime,tag=sewer_slime_large]
execute if score open sewer matches 0 run kill @e[type=slime,tag=sewer_slime_small]

### Slime boss

execute at @e[type=marker,tag=slime_boss_cut] if entity @a[distance=..4] run function mystery_9_wands:slime_boss_cut

### Movment Slime

execute if score @p slime_boss_movment matches 1 run tp @a 129.8 -59 144

### Slime bossbar

function mystery_9_wands:slime_king_bossbar

### Slime continue

data modify entity @e[type=slime,name="Slime King",nbt={Size:0},limit=1] DeathLootTable set value continue_slime
execute store result score @a[limit=1] slime_cont run clear @a pearlescent_froglight{continue_after_slime:1b} 0
execute if score @a[limit=1] slime_cont matches 1.. run function mystery_9_wands:cont_after_slime

### Slime wand right click

execute if entity @p[scores={slime_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{slimewand:1b,CustomModelData:210465}}}] run execute as @p run function mystery_9_wands:summon_slimes

### Slime wand reset

scoreboard players remove @a[scores={slime_wand=1..}] slime_wand 1

### Kill baby slimes from slime wand

kill @e[type=slime,name="Summoned Slimes",tag=!slimewand_slimes]
data modify entity @e[type=slime,name="Summoned Slimes",tag=!slimewand_slimes,limit=1] DeathLootTable append value blank_loottable

### Thief victom 

function mystery_9_wands:npc/thief_victim

### Start rooftop chase

execute at @e[type=marker,tag=rooftop_start] if entity @a[distance=..2] run function mystery_9_wands:start_rooftop_chase

### End rooftop chase

execute at @e[type=marker,tag=rooftop_fail] if entity @a[distance=..2] run function mystery_9_wands:fail_rooftop_chase

execute at @e[type=zombie,tag=ninjathief] if entity @a[distance=..2] run function mystery_9_wands:finish_rooftop_chase
