### Visible

execute if entity @e[type=minecraft:evoker,tag=final_boss] run bossbar set minecraft:final_boss_bossbar visible true
execute unless entity @e[type=minecraft:evoker,tag=final_boss] run bossbar set minecraft:final_boss_bossbar visible false
bossbar set minecraft:final_boss_bossbar players @a

### Set bossbar to health

execute store result bossbar minecraft:final_boss_bossbar value as @e[type=evoker,tag=final_boss] run data get entity @s Health

### Set max

bossbar set minecraft:final_boss_bossbar max 380

### Set color

bossbar set final_boss_bossbar color red