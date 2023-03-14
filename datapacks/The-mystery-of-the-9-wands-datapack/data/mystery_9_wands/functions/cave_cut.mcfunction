### Movment

scoreboard players set @a cave_cut 1

### Summon Skeleton

summon skeleton -34 -60 132 {Silent:1b,NoAI:1b,Invulnerable:1b,LeftHanded:1b,CanPickUpLoot:0b,Tags:["caveskele"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}}]}

### Talking

tellraw @a ["","<",{"text":"Thief Leader","color":"gold"},"> ","You! ","They were suppose to stop you. ","You will never take my wand!"]

### Walk away

setblock -34 -62 132 purpur_stairs[facing=south,half=bottom,shape=straight] replace

### End Cutscene

schedule function mystery_9_wands:kill_cave_skely 7s

### Bomb_chest

setblock -23 -60 144 chest destroy
kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}}]
function mystery_9_wands:bomb/menu/update

### Miner

tp @e[tag=miner,type=zombie] ~ ~-100 ~
summon zombie -26 -60 143 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["miner"],CustomName:'{"text":"Miner","color":"gold","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:2743753}}],ActiveEffects:[{Id:14,Amplifier:1b,Duration:214766688,ShowParticles:0b}]}

