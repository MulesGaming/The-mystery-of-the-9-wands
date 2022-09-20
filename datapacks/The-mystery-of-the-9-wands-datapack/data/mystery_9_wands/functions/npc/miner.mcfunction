### Message

execute at @e[type=zombie,tag=miner] run tellraw @a[scores={miner_npc=1}] ["","<",{"text":"Miner","color":"gold"},"> "," The skeleton fled down that way!"]
execute as @a if score @p miner_npc matches 1 run scoreboard players set @p miner_npc 0
