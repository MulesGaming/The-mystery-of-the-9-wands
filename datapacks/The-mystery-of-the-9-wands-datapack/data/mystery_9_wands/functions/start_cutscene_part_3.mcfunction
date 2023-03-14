### Run from :start_cutscene_part_2-7

### Tp player to "real" office

tp @p -54.047 -56.50000 81.942

### Kill John Lean

kill @e[type=minecraft:villager,tag=john_lean_start]

### Grant starting advancement

advancement grant @p only mystery_9_wands:start_advancement

### Enable movement

scoreboard players set @p cutscence_movment 0

### Checkpoint

tellraw @p {"text":"Checkpoint!","color":"green"}
spawnpoint @p -53 -57 81

### Restet
function mystery_9_wands:closedmcransport
scoreboard players set open sewer 0
scoreboard players set open swamp 0