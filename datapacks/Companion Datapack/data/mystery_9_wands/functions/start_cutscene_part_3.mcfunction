### Run from command block running function mystery_9_wands:start_cutscene_part_3 triggred by start_cutscene_part_1
### Reset redstone timer

setblock -11 -59 -3 air destroy

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

### Give location compass. 

item replace entity @p weapon.offhand with compass{display:{Name:'{"text":"Destination Compass","color":"white","italic":false}',Lore:['{"text":"This compass points towards your next destination","color":"yellow","italic":false}']},HideFlags:5,Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:8,Y:-60,Z:131}}
item replace entity @p weapon.mainhand with iron_sword{display:{Name:'{"text":"Old Sword","color":"dark_gray","italic":false}'},Unbreakable:1b}

### Close MCTransport
function mystery_9_wands:closedmcransport
