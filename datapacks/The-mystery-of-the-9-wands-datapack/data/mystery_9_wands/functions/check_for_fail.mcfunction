### Check for item

execute store result score fail puzzle run clear @a paper{display:{Name:'{"text":"Rename this paper to you\'re answer.","italic":true}'},puzzle:1b} 0

### Wrong answer?

execute if score fail puzzle matches 0 run function mystery_9_wands:puzzle_fail

### Reset score

scoreboard players set fail puzzle 0