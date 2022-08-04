### Add to count

scoreboard players add count statuepartgotten 1

### Message

tellraw @a ["","You found a Lost statue bit! You now have ",{"score":{"name":"count","objective":"statuepartgotten"},"color":"green"},{"text":"/4!","color":"green"}]

### Get Lost statue bit

give @a gold_block{display:{Name:'{"text":"Lost statue bit","italic":false}'}}