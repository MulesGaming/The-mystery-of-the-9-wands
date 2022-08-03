### No movment

scoreboard players set @a skele_cut 1

### Summon skeleton

summon skeleton -18.7 -52 71.2 {Silent:1b,CustomNameVisible:1b,NoAI:1b,Tags:["cut_skeleton_boss"],CustomName:'{"text":"Thief Leader","color":"gold","italic":false}',HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}

### item

summon item_frame -20 -51 67 {Facing:1b,Invisible:1b,Fixed:1b,Tags:["orbframe"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"-----","color":"light_purple","italic":false,"obfuscated":true},{"text":" Orb Wand ","color":"light_purple","italic":false,"obfuscated":false},{"text":"-----","italic":false}]',Lore:['{"text":"Right click to summon give you boosting effects for 10 seconds.","color":"dark_purple","italic":false}']},HideFlags:4,Unbreakable:1b,CustomModelData:92869,orb_wand:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-1922544427,-1020375958,-1774269276,1469366596],Slot:"mainhand"}]}}}

### Text

tellraw @a ["","<",{"text":"Thief Leader","color":"gold"},"> ","You can not stop the ",{"text":"Doomshire Clan. ","bold":true,"color":"dark_red"},"Once we have the 9th wand from you nothing will be able to stop us!"]

### Make stair

setblock -34 -62 131 purpur_stairs{facing:0}

### Next part

schedule function mystery_9_wands:thief_skele_boss_2 5s

