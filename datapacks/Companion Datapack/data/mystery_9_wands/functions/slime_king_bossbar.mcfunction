### Visible

execute if entity @e[type=minecraft:slime,tag=slime_king] run bossbar set minecraft:slime_king visible true
execute unless entity @e[type=minecraft:slime,tag=slime_king] run bossbar set minecraft:slime_king visible false
bossbar set minecraft:slime_king players @a

### Set bossbar to health

execute store result bossbar minecraft:slime_king value as @e[type=slime,tag=slime_king] run data get entity @s Health

### Set max

bossbar set minecraft:slime_king max 100

### Color

bossbar set slime_king color green

