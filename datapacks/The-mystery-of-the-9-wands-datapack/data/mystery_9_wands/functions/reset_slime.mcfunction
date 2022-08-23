### Reset timer

scoreboard players set time slime_wand_timer 0

### Remove Slime

tp @e[type=slime,tag=slimewand_slimes] ~ ~-100 ~
kill @e[type=slime,tag=slimewand_slimes]

### Clear countdown

title @a clear
