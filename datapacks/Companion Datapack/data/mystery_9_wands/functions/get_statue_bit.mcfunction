scoreboard players add count statuepartgotten 1
tellraw @a ["","You found a Lost statue bit! You now have ",{"score":{"name":"count","objective":"statuepartgotten"},"color":"green"},{"text":"/4!","color":"green"}]
give @a gold_block{display:{Name:'{"text":"Lost statue bit","italic":false}'}}