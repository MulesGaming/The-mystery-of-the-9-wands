### Clear Item

clear @a cyan_wool{continue_after_final:1b}

### Tp

tp @a -7.021 -59.5 -16.120

### Movment

scoreboard players set @a cutscence_movment 1

### Summon Jhon Dean

summon villager -4 -60 -6 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["john_lean_start"],CustomName:'{"text":"John Dean","color":"gold","italic":false}',Offers:{}}

### Next part

schedule function mystery_9_wands:cont_after_final_boss_2 5s

### Wand

clear @a carrot_on_a_stick{voidwand:1b}
clear @a carrot_on_a_stick{firewand:1b}
give @a carrot_on_a_stick{display:{Name:'{"text":"Void Wand","color":"black","italic":false}',Lore:['{"text":"Right click to give surrounding entity\'s withering.","color":"gray","italic":false}']},Unbreakable:1b,CustomModelData:1534853,voidwand:1b}
give @a carrot_on_a_stick{display:{Name:'{"text":"Fire Wand","color":"#FF7700","italic":false}',Lore:['{"text":"Right click to make fire around you.","color":"gray","italic":false}']},Unbreakable:1b,CustomModelData:986694,firewand:1b}
