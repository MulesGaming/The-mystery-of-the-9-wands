### Run from command block(?)
### Summon John Lean

summon villager -4 -60 -6 {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["john_lean_start"],CustomName:'{"text":"John Dean","italic":false}',Offers:{}}

### Start Timer(2.4 sec, 48 tics)

setblock -13 -60 -6 redstone_block

### Disable movement

scoreboard players set @p cutscence_movment 1

### Clear inventory

clear @p