execute at @e[type=villager,tag=sewer_npc] as @a[distance=..2,tag=!sewer_player] run scoreboard players set @a[distance=..2,tag=!sewer_player] sewer_npc 1
tag @a[tag=sewer_player] remove sewer_player
execute at @e[type=minecraft:villager,tag=sewer_npc] run tag @a[distance=..2] add sewer_player
execute at @e[type=villager,tag=sewer_npc] run tellraw @a[scores={sewer_npc=1}] ["","<",{"text":"Sewer worker","color":"gold"},"> ","No one is allowed to go down into the sewers, sorry."]
execute as @a if score @p sewer_npc matches 1 run scoreboard players set @p sewer_npc 0

