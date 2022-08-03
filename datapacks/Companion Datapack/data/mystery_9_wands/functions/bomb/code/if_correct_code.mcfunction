### Run if scoreboard is 36 from is_correct_code

tellraw @a {"text":"Correct code! Bomb disabled.","color":"green"}
setblock -23 -60 144 air
scoreboard players set code bomb_code 0

### Open cave side

setblock -21 -59 144 air
setblock -21 -60 144 air
setblock -21 -59 143 air
setblock -21 -60 143 air