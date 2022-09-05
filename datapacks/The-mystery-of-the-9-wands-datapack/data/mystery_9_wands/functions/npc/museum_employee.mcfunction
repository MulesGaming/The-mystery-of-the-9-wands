### To run

execute at @e[type=villager,tag=museumemployee] as @a[distance=..2,tag=!museum_employee_player] run scoreboard players set @a[distance=..2,tag=!museum_employee_player] museumemployee 1
tag @a[tag=museum_employee_player] remove museum_employee_player
execute at @e[type=villager,tag=museumemployee] run tag @a[distance=..2] add museum_employee_player

### Message

execute at @e[type=villager,tag=museumemployee] run tellraw @a[scores={museumemployee=1}] ["",{"text":"<","color":"white"},{"text":"Museum Employee","color":"gold"},">"," Hello ",{"selector":"@p"}," the CEO of MegaMine told me you were coming."," I would give you the ",{"text":"key","italic":true}," to that ",{"text":"door","italic":true}," over ",{"text":"there","italic":false}," but I lost 4 statue bits."," If you bring all of them to me I will trade them for the ",{"text":"key","italic":true},". I know that they are all outside the museum somewhere."]
execute as @a if score @p museumemployee matches 1 run scoreboard players set @p museumemployee 0
