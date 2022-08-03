### Detect

execute at @e[type=villager,tag=thiefvictom] as @a[distance=..4,tag=!thiefvictom_player] run scoreboard players set @a[distance=..4,tag=!thiefvictom_player] thief_victom 1
tag @a[tag=thiefvictom_player] remove thiefvictom_player
execute at @e[type=villager,tag=thiefvictom] run tag @a[distance=..4] add thiefvictom_player

### Text

execute at @e[type=villager,tag=thiefvictom] run tellraw @a[scores={thief_victom=1}] ["","<",{"text":"Stolen purse lady","color":"gold"},">"," Help! A ninja just stole my purse and fled up the tower! If you return my purse to me you can have a valuable wand inside it!"]