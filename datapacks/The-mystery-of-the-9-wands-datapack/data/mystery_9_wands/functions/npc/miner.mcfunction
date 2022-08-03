### Message

execute at @e[type=zombie,tag=miner] run tellraw @a[scores={miner_npc=1}] ["","<",{"text":"Miner","color":"gold"},"> ","That skeleton with the diamond sword set a bomb that is going to blow! If I knew the ",{"text":"code ","italic":true},"I could disable it. Maybe that skeleton left some clues to the code around..."]
execute as @a if score @p miner_npc matches 1 run scoreboard players set @p miner_npc 0
