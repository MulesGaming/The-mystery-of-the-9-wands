### Summon block displays

kill @e[type=block_display,tag=statue-bit-display-1]
kill @e[type=block_display,tag=statue-bit-display-2]
kill @e[type=block_display,tag=statue-bit-display-3]
kill @e[type=block_display,tag=statue-bit-display-4]

execute unless entity @e[type=block_display,tag=statue-bit-display-1] run summon block_display -11.7 -58.7 114.6 {billboard:"fixed",Tags:["statue-bit-display-1"],block_state:{Name:"minecraft:gold_block"}}
execute unless entity @e[type=block_display,tag=statue-bit-display-2] run summon block_display -9.0 -56.7 120.35 {billboard:"fixed",Tags:["statue-bit-display-2"],block_state:{Name:"minecraft:gold_block"}}
execute unless entity @e[type=block_display,tag=statue-bit-display-3] run summon block_display 3.6 -57.7 116.32 {billboard:"fixed",Tags:["statue-bit-display-3"],block_state:{Name:"minecraft:gold_block"}}
execute unless entity @e[type=block_display,tag=statue-bit-display-4] run summon block_display 1.3 -57 123.4 {billboard:"fixed",Tags:["statue-bit-display-4"],block_state:{Name:"minecraft:gold_block"}}

### Modify data to shrink

data merge entity @e[type=block_display,tag=statue-bit-display-1,limit=1] {billboard:"fixed",Tags:["statue-bit-display-1"],transformation:{scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:gold_block"}}
data merge entity @e[type=block_display,tag=statue-bit-display-2,limit=1] {billboard:"fixed",Tags:["statue-bit-display-2"],transformation:{scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:gold_block"}}
data merge entity @e[type=block_display,tag=statue-bit-display-3,limit=1] {billboard:"fixed",Tags:["statue-bit-display-3"],transformation:{scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:gold_block"}}
data merge entity @e[type=block_display,tag=statue-bit-display-4,limit=1] {billboard:"fixed",Tags:["statue-bit-display-4"],transformation:{scale:[0.4f,0.4f,0.4f]},block_state:{Name:"minecraft:gold_block"}}

### Summon interaction entitys

kill @e[type=interaction,tag=lost-satue-bit-trigger]

execute at @e[type=block_display,tag=statue-bit-display-1] run summon minecraft:interaction ~ ~ ~ {Tags: ["lost-satue-bit-trigger"]}
execute at @e[type=block_display,tag=statue-bit-display-2] run summon minecraft:interaction ~ ~ ~ {Tags: ["lost-satue-bit-trigger"]}
execute at @e[type=block_display,tag=statue-bit-display-3] run summon minecraft:interaction ~ ~ ~ {Tags: ["lost-satue-bit-trigger"]}
execute at @e[type=block_display,tag=statue-bit-display-4] run summon minecraft:interaction ~ ~ ~ {Tags: ["lost-satue-bit-trigger"]}

### Reset players

scoreboard players set count statuepartgotten 0
clear @a gold_block{display:{Name:'{"text":"Lost statue bit","italic":false}'}}

