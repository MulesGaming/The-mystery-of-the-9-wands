### Museum locked door entrence
setblock 4 -56 121 air replace
setblock 4 -57 121 mangrove_door[facing=east] replace
setblock 4 -56 121 mangrove_door[half=upper,facing=east] replace
title @a actionbar ["",{"text":"This door is locked!","color":"white"},{"text":" A museum employee might have a key.","italic":true,"color":"white"}]
kill @e[type=item,nbt={Item:{id:"minecraft:mangrove_door",Count:1b}},sort=nearest]
