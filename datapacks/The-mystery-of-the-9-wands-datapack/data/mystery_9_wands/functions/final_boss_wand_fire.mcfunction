### Use fire wand

execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~ ~ ~ air run setblock ~ ~ ~ fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~1 ~ ~ air run setblock ~1 ~ ~ fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~ ~ ~1 air run setblock ~ ~ ~1 fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~1 ~ ~1 air run setblock ~1 ~ ~1 fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~-1 ~ ~1 air run setblock ~-1 ~ ~1 fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~1 ~ ~-1 air run setblock ~1 ~ ~-1 fire
execute at @e[type=evoker,tag=final_boss_cut] run execute if block ~-1 ~ ~-1 air run setblock ~-1 ~ ~-1 fire

### Do agian

schedule function mystery_9_wands:final_boss_wand_fire 10s