### What page

scoreboard players set bool bomb_menu 0
execute store success score bool bomb_menu run clear @s #mystery_9_wands:bomb_menu{page:0} 0
execute if score bool bomb_menu matches 1 run scoreboard players set @s bomb_menu 0
