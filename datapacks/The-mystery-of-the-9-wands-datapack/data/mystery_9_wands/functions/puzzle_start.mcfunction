### Message

tellraw @a[scores={puzzle=1}] ["","What is ",{"text":"Red ","color":"red"},{"text":"White ","color":"white"},"and ",{"text":"Black ","color":"black"},"all over?","\n","Rename the piece of paper to you're answer!"]

### Give paper

give @a paper{puzzle:1b,display:{Name:'{"text":"Rename this paper to you\'re answer."}',Lore:['{"text":"Rename this piece of paprt to you answer to the riddle:  "}','[{"text":"What\'s "},{"text":"Red ","color":"red"},{"text":"White ","color":"white"},{"text":"and "},{"text":"Black","color":"black"},{"text":" all over?"}]']}} 1

### Make anvil

setblock -175 -60 157 anvil

### Levels 

xp set @a 999999999 levels


