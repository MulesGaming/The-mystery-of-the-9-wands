### Reset timer

scoreboard players set time undead_wand_timer 0

### Remove Undead

tp @e[type=skeleton,tag=summonedskeleton] ~ ~-100 ~
tp @e[type=zombie,tag=summonedzombie] ~ ~-100 ~
kill @e[type=skeleton,tag=summonedskeleton]
kill @e[type=zombie,tag=summonedzombie]
