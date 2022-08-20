### Movment

scoreboard players set @a cutscence_movment 0

### Tp

tp @a -54.047 -56.50000 81.942

### Checkpoint

tellraw @p {"text":"Checkpoint!","color":"green"}
spawnpoint @p -53 -57 81

### Credits

tellraw @a ["","Find the Mystery of the Wands online!","\n",{"text":"Website","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://mulesgaming.github.io/projects/mystery-9-wands/the-mystery-9-wands.html"}}," ",{"text":"Github","bold":true,"underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/MulesGaming/The-mystery-of-the-9-wands/"}}]
tellraw @a ["",{"text":"MCStacker, ","clickEvent":{"action":"open_url","value":"https://mcstacker.net/"}},{"text":"Minecraft Json, ","clickEvent":{"action":"open_url","value":"https://www.minecraftjson.com/"}},{"text":"and Vanilla Tweak's  armor statues datapack ","clickEvent":{"action":"open_url","value":"https://vanillatweaks.net/picker/datapacks/"}},"are all website's related to commands/datapack's for Minecraft that were used to help developing this map."]
tellraw @a ["","Made by ",{"text":"Mules Gaming","clickEvent":{"action":"open_url","value":"https://mulesgaming.github.io/"}}]
title @a title "Mules Gaming"
title @a subtitle "Developer"

