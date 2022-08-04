### Reset timer

scoreboard players set time slime_wand_timer 0

### Remove Undead

tp @e[type=slime,tag=slimewand_slimes] ~ ~-100 ~
kill @e[type=slime,tag=slimewand_slimes]
