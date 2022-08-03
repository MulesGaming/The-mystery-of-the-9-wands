setblock -15 -59 72 black_concrete
setblock -15 -58 72 black_concrete
setblock -15 -58 71 black_concrete
setblock -15 -59 71 black_concrete
setblock -13 -59 73 oak_wall_sign[facing=east]{Color:"red",GlowingText:1b,Text2:'{"text":"CLOSED","color":"dark_red","bold":false}'} destroy
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign",Count:1b}}]
kill @e[type=villager,tag=mctransportemployee]