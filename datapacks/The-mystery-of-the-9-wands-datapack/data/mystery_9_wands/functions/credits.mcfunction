### Movment

scoreboard players set @a cutscence_movment 0

### Tp

tp @a -54.047 -56.50000 81.942

### Checkpoint

tellraw @p {"text":"Checkpoint!","color":"green"}
spawnpoint @p -53 -57 81

### Credits

tellraw @a {"text": "Credits","color": "dark_green","underlined": true,"bold": true}
tellraw @a ["","Find the Mystery of the Wands online!","\n",{"text":"Website","bold":true,"underlined":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"https://mulesgaming.com/projects/mystery-9-wands/the-mystery-9-wands"}}," ",{"text":"Github","bold":true,"underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/MulesGaming/The-mystery-of-the-9-wands/"}}]
tellraw @a ["",{"text":"MCStacker, ","italic": true,"clickEvent":{"action":"open_url","value":"https://mcstacker.net/"}},{"text":"Minecraft Json, ","italic": true,"clickEvent":{"action":"open_url","value":"https://www.minecraftjson.com/"}},{"text":"and Vanilla Tweak's  armor statues datapack ","italic": true,"clickEvent":{"action":"open_url","value":"https://vanillatweaks.net/picker/datapacks/"}},"are all website's related to commands/datapack's for Minecraft that were used to help developing this map."]
tellraw @a ["","Made by ",{"text":"Mules Gaming","italic": true,"clickEvent":{"action":"open_url","value":"https://mulesgaming.com/"}}]
title @a title "Mules Gaming"
title @a subtitle "Developer"

### Finish message

tellraw @a ["","You have finished The Mystery of the 9 Wands! If you want to play again I recommend downloading it again from the ",{"text":"versions","bold":true,"underlined":true,"color":"black","clickEvent":{"action":"open_url","value":"https://github.com/MulesGaming/The-mystery-of-the-9-wands/releases"}}," page."]


