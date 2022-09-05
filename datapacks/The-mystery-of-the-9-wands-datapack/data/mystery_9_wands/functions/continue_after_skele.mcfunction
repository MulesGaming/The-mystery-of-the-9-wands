
### Mail

scoreboard players set message mail 1

### Sewer open

function mystery_9_wands:open_sewer

### Complete

scoreboard players add do_final if_final 1

### Clear

clear @a cyan_wool{cont_after_thief_skeley:1b}

### Destination compass

item replace entity @a weapon.offhand with compass{display:{Name:'{"text":"Destination Compass","color":"white","italic":false}',Lore:['{"text":"This compass points towards your next destination","color":"yellow","italic":false}']},HideFlags:5,Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:6,Y:-64,Z:111}}

### GO to office

tp @a -54.047 -56.50000 81.942

