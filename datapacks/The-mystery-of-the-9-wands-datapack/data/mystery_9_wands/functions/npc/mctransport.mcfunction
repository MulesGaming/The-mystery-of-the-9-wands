### Message

execute at @e[type=villager,tag=mctransportemployee] run tellraw @a[scores={mctransport=1}] ["","<",{"text":"MC Transport Employee","color":"gold"},"> ",{"text":"Welcome to ","color":"green"},{"text":"MC Transport. ","bold":true,"color":"green"},{"text":"Where would you like to go?","color":"green"},"\n"," ",{"text":"The Caves","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function mystery_9_wands:ride_to_mines"}}]

### Swamp

execute at @e[type=villager,tag=mctransportemployee] if score open swamp matches 1.. run tellraw @a[scores={mctransport=1}] [{"text":" The Swamp","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function mystery_9_wands:ride_to_swamp"}}]
execute as @a if score open swamp matches 1 run scoreboard players set @p swamp 0
execute as @a if score @p mctransport matches 1 run scoreboard players set @p mctransport 0
