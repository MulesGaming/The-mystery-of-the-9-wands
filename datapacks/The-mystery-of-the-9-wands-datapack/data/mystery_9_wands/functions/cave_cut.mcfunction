### Movment

scoreboard players set @a cave_cut 1

### Summon Skeleton

summon skeleton -34 -60 132 {Silent:1b,NoAI:1b,Invulnerable:1b,LeftHanded:1b,CanPickUpLoot:0b,Tags:["caveskele"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}]}

### Talking

tellraw @a ["","<",{"text":"Thief Leader","color":"gold"},"> ","You! "," They were suppose to stop you. ","No matter. The cave has a bomb in it. When it detonates you will die! MUHAHA"]

### Walk away

setblock -34 -62 132 purpur_stairs[facing=south,half=bottom,shape=straight] replace

### Destanation Commpass

item replace entity @p weapon.offhand with compass{display:{Name:'{"text":"Destination Compass","color":"white","italic":false}',Lore:['{"text":"This compass points towards your next destination","color":"yellow","italic":false}']},HideFlags:5,Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-23,Y:-62,Z:145}}

### End Cutscenc

schedule function mystery_9_wands:kill_cave_skely 7s

### Bomb_chest

setblock -23 -60 144 chest destroy
kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}}]
function mystery_9_wands:bomb/menu/update