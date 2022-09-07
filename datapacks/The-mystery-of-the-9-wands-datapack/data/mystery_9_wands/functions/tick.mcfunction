### Move mobs when on purpur stairs(East, north, west, south)

execute as @e[type=!marker,type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=east] run tp @s ~.125 ~ ~ 270 0
execute as @e[type=!marker,type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=north] run tp @s ~ ~ ~-.125 180 0
execute as @e[type=!marker,type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=west] run tp @s ~-.125 ~ ~ 90 0
execute as @e[type=!marker,type=!player] at @s if block ~ ~-2 ~ purpur_stairs[facing=south] run tp @s ~ ~ ~.125 0 0

### Move mobs when on purpur stairs with slabs(East, north, west, south)

execute as @e[type=!marker,type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=east] run tp @s ~.125 ~ ~ 270 0
execute as @e[type=!marker,type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=north] run tp @s ~ ~ ~-.125 180 0
execute as @e[type=!marker,type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=west] run tp @s ~-.125 ~ ~ 90 0
execute as @e[type=!marker,type=!player] at @s if block ~ ~-1.5 ~ purpur_stairs[facing=south] run tp @s ~ ~ ~.125 0 0

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

### Check if player enter/exit

execute at @e[type=marker,tag=exit_office] run teleport @a[distance=..2] -3 -57 83
execute at @e[type=marker,tag=enter_office] run teleport @a[distance=..2] -52 -57 92

### If dead

function mystery_9_wands:ifdied

### Museum Employee NPC

function mystery_9_wands:npc/museum_employee

### Fang wand right click

execute if entity @p[scores={fang_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{fangwand:1b,CustomModelData:2223}}}] run function mystery_9_wands:fangs

### Fang wand reset

scoreboard players remove @a[scores={fang_wand=1..}] fang_wand 1

### Thiefery cutscence

execute if block 8 -57 130 mangrove_door[open=true] run function mystery_9_wands:museum_thievery_cutscene_1
execute if block 9 -57 130 mangrove_door[open=true] run function mystery_9_wands:museum_thievery_cutscene_1

### Sataration

effect give @a saturation 999999 99 true

### MCtransport employee

execute at @e[type=villager,tag=mctransportemployee] as @a[distance=..3.5,tag=!mctransport_player] run scoreboard players set @a[distance=..4,tag=!mctransport_player] mctransport 1
tag @a[tag=mctransport_player] remove mctransport_player
execute at @e[type=villager,tag=mctransportemployee] run tag @a[distance=..4] add mctransport_player

execute if score do_final if_final matches 3 run execute at @e[type=villager,tag=mctransportemployee] as @a[distance=..4,tag=!mctransport_player] run scoreboard players set @a[distance=..4,tag=!mctransport_player] swamp 1
execute if score do_final if_final matches 3 run tag @a[tag=mctransport_player] remove mctransport_player
execute if score do_final if_final matches 3 run execute at @e[type=villager,tag=mctransportemployee] run tag @a[distance=..4] add mctransport_player

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

execute store result score @a cont_after_thief_skeley run clear @a cyan_wool{cont_after_thief_skeley:1b} 0
execute if score @p cont_after_thief_skeley matches 1.. run function mystery_9_wands:continue_after_skele

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
execute store result score @a[limit=1] slime_cont run clear @a cyan_wool{continue_after_slime:1b} 0
execute if score @a[limit=1] slime_cont matches 1.. run function mystery_9_wands:cont_after_slime
fill 120 -57 149 120 -57 138 air
fill 120 -57 149 120 -56 138 air replace barrier
fill 120 -57 149 120 -58 138 air replace barrier

### Slime wand right click

execute if score time slime_wand_timer matches ..1 run execute if score @p slime_wand matches 1.. run execute if entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{slimewand:1b,CustomModelData:210465}}}] at @p run function mystery_9_wands:summon_slimes
execute if score time slime_wand_timer matches ..1 run function mystery_9_wands:reset_slime
execute if score time slime_wand_timer matches 1.. run title @a actionbar ["","Slime wand is on cool down with ",{"score":{"name":"time","objective":"slime_wand_timer"}}," seconds left"]

### Slime wand reset

scoreboard players remove @a[scores={slime_wand=1..}] slime_wand 1

### Kill baby slimes from slime wand

tp @e[type=slime,name="Summoned Slimes",tag=!slimewand_slimes] ~ ~-100 ~
kill @e[type=slime,name="Summoned Slimes",tag=!slimewand_slimes]

### Thief victom 

function mystery_9_wands:npc/thief_victim

### Start rooftop chase

execute at @e[type=marker,tag=rooftop_start] if entity @a[distance=..5] run function mystery_9_wands:start_rooftop_chase

### End rooftop chase

execute at @e[type=zombie,tag=ninjathief] if entity @p[distance=..2] run function mystery_9_wands:finish_rooftop_chase

### Speed wand right click

execute if entity @p[scores={speed_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{speedwand:1b,CustomModelData:643978}}}] run execute as @p run effect give @p speed 30 2 true

### Speed wand reset

scoreboard players remove @a[scores={speed_wand=1..}] speed_wand 1

### Undead wand right click

execute if score time undead_wand_timer matches ..1 run execute if entity @p[scores={undead_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{undeadwand:1b,CustomModelData:798893}}}] run execute as @p run execute at @a run function mystery_9_wands:summon_undead
execute if score time undead_wand_timer matches ..1 run function mystery_9_wands:reset_undead
execute if score time undead_wand_timer matches 1.. run title @a actionbar ["","Undead wand is on cool down with ",{"score":{"name":"time","objective":"undead_wand_timer"}}," seconds left"]

### Undead wand reset

scoreboard players remove @a[scores={undead_wand=1..}] undead_wand 1

### Final 

execute if score do_final if_final matches 3 run function mystery_9_wands:open_final

### Water wand right click

execute if entity @p[scores={water_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{waterwand:1b,CustomModelData:967854}}}] run execute as @p run execute at @a run function mystery_9_wands:give_water_effects

### Water wand reset

scoreboard players remove @a[scores={water_wand=1..}] water_wand 1

### Fire wand right click

execute if entity @p[scores={flame_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{firewand:1b,CustomModelData:986694}}}] run execute as @p run execute at @a run function mystery_9_wands:summon_fire

### Fire wand reset

scoreboard players remove @a[scores={flame_wand=1..}] flame_wand 1

### Cat wand right click

execute if entity @p[scores={cat_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{catwand:1b,CustomModelData:2373578}}}] run execute as @p run function mystery_9_wands:summon_cat

### Cat wand reset

scoreboard players remove @a[scores={cat_wand=1..}] cat_wand 1

### Void wand right click

execute if entity @p[scores={void_wand=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{voidwand:1b,CustomModelData:1534853}}}] run effect give @e[type=!player,distance=..3,team=!BaseTeam] wither 5

### Void wand reset

scoreboard players remove @a[scores={void_wand=1..}] void_wand 1

### Guardian cont

execute store result score @a[limit=1] cont_after_guardian run clear @a cyan_wool{cont_after_guardian:1b} 0
execute if score @a[limit=1] cont_after_guardian matches 1.. run function mystery_9_wands:cont_after_guardian

### Guardian bossbar

function mystery_9_wands:guardian_bossbar

### Cat kidnapper

execute at @e[type=marker,tag=catnapper] if entity @p[distance=..2] run function mystery_9_wands:start_catnapper

### Cont after cat

execute store result score @a[limit=1] cont_after_catnappers run clear @a cyan_wool{continue_after_catnapper:1b} 0
execute if score @a[limit=1] cont_after_catnappers matches 1.. run function mystery_9_wands:cont_after_catnapper


execute if score on puzzle-on-off matches 1 run function mystery_9_wands:check_for_fail

### Final boss start

execute if score @p final_boss_movment matches 1 run tp @a -175 -60 164
execute at @e[tag=final_boss,type=marker] if entity @p[distance=..3] run function mystery_9_wands:start_final_boss
function mystery_9_wands:final_boss_bossbar

### Final boss cont

execute store result score @a[limit=1] cont_after_finalboss run clear @a cyan_wool{continue_after_final:1b} 0
execute if score @a[limit=1] cont_after_finalboss matches 1.. run function mystery_9_wands:cont_after_final_boss

### Weather

weather clear
time set day

### Resourse pack clear

clear @a paper{CustomModelData:874336}