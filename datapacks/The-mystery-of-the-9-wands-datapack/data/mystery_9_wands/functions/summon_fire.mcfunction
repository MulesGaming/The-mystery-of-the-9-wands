### Fire resistince

effect give @p fire_resistance 20 1 true

### Make fire

execute if block ~ ~ ~ air run setblock ~ ~ ~ fire
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ fire
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ fire
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 fire
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 fire
execute if block ~1 ~ ~1 air run setblock ~1 ~ ~1 fire
execute if block ~-1 ~ ~1 air run setblock ~-1 ~ ~1 fire
execute if block ~1 ~ ~-1 air run setblock ~1 ~ ~-1 fire
execute if block ~-1 ~ ~-1 air run setblock ~-1 ~ ~-1 fire

