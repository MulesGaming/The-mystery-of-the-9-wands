setblock -15 -59 72 air
setblock -15 -58 72 air
setblock -15 -58 71 air
setblock -15 -59 71 air
setblock -13 -59 73 oak_wall_sign[facing=east]{Color:"green",GlowingText:1b,Text2:'{"text":"Open","color":"dark_green","bold":false}'} destroy
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sign",Count:1b}}]
summon villager -14.9 -59 72.5 {Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,Health:1f,Rotation:[-90F,0F],Tags:["mctransportemployee"],CustomName:'{"text":"MCtransportemployee"}',Attributes:[{Name:"generic.max_health",Base:1}],VillagerData:{profession:"minecraft:mason"},Offers:{}}