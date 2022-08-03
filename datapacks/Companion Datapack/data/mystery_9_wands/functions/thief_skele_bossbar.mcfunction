### Visible

execute if entity @e[type=minecraft:skeleton,tag=skele_boss] run bossbar set minecraft:skeleboss visible true
execute unless entity @e[type=minecraft:skeleton,tag=skele_boss] run bossbar set minecraft:skeleboss visible false
bossbar set minecraft:skeleboss players @a

### Set bossbar to health

execute store result bossbar minecraft:skeleboss value as @e[type=skeleton,tag=skele_boss] run data get entity @s Health

### Set max

bossbar set minecraft:skeleboss max 170

### Color

bossbar set skeleboss color green