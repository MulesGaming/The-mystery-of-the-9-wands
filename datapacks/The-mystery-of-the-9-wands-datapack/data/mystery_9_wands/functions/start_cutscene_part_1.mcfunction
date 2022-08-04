### Run from command block(?)
### Summon John Lean

summon villager -4 -60 -6 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["john_lean_start"],CustomName:'{"text":"John Dean","italic":false}',Offers:{}}

### Disable movement

scoreboard players set @p cutscence_movment 1

### Clear inventory

clear @p

### Adventure mode

gamemode adventure @a

### Next function

schedule function mystery_9_wands:start_cutscene_part_2 3s
