### Fire resistince

effect give @e[limit=1,sort=nearest,distance=..1] fire_resistance 20 1 true

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

