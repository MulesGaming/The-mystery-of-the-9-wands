### Visible

execute if entity @e[type=minecraft:elder_guardian,tag=guardian_boss] run bossbar set minecraft:guardian_boss visible true
execute unless entity @e[type=minecraft:elder_guardian,tag=guardian_boss] run bossbar set minecraft:guardian_boss visible false
bossbar set minecraft:guardian_boss players @a

### Set bossbar to health

execute store result bossbar minecraft:guardian_boss value as @e[type=minecraft:elder_guardian,tag=guardian_boss] run data get entity @s Health

### Set max

bossbar set minecraft:guardian_boss max 275

### Color

bossbar set guardian_boss color yellow

